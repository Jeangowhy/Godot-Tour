/// An example of hooking up stdin/stdout to either a TCP or UDP stream.
/// 
/// to connect a TCP server:
/// 
///     cargo run --example 03_connect -- 127.0.0.1:8080
/// 
/// to connect a UDP server:
/// 
///     cargo run --example 03_connect -- --udp 127.0.0.1:8080
/// 
/// or bind to a address as udp server
/// 
///     cargo run --example 03_connect -- --udp 127.0.0.1:8081 127.0.0.1:8080
///     cargo run --example 03_connect -- --udp 127.0.0.1:8080 127.0.0.1:8081

use std::{error::Error, net::SocketAddr};
// use async_std::stream::StreamExt;
use futures::StreamExt;
use tokio_util::codec::{BytesCodec, FramedRead, FramedWrite};
use tokio::io;

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
  let mut args = std::env::args().skip(1).collect::<Vec<String>>();
  let mut tcp = true;

  let bind_addr = match args.iter().position(|a| a == "--udp") {
    Some(i) => {
      args.remove(i);
      tcp = false;
      args.first().unwrap()
    },
    None => "",
  };

  
  let addr = args.last().ok_or("address is required")?;
  // let addr: SocketAddr = addr.parse()?;
  let addr = addr.parse::<SocketAddr>().expect("require TCP/IP address.");

  // let the OS pick udp IP address and port if not specify.
  let bind_addr = if !bind_addr.is_empty() && args.len() > 1 {
    bind_addr
  } else if addr.is_ipv4() {
    "0.0.0.0:0"
  } else {
    "[::]:0"
  };
  let bind_addr = bind_addr.parse::<SocketAddr>().expect("require UPD/IP address.");
  
  
  let stdin = FramedRead::new(io::stdin(), BytesCodec::new());
  let stdin = stdin.map(|i| i.map(|bytes| bytes.freeze()));
  let stdout = FramedWrite::new(io::stdout(), BytesCodec::new());

  if tcp {
    tcp::connect(&addr, stdin, stdout).await?;
  }else{
    udp::connect(&addr, &bind_addr, stdin, stdout).await?;
  }

  Ok(())
}

mod tcp {
  use bytes::Bytes;
  use tokio::net::TcpStream;
  use futures::{future, Sink, SinkExt, Stream, StreamExt};
  use tokio_util::codec::{BytesCodec, FramedRead, FramedWrite};
  use std::{io, net::SocketAddr, error::Error};


  pub async fn connect(
      addr: &SocketAddr, 
      mut stdin: impl Stream<Item = Result<Bytes, io::Error>> + Unpin,
      mut stdout: impl Sink<Bytes, Error = io::Error> + Unpin,
  ) -> Result<(), Box<dyn Error>> {
    let mut stream = TcpStream::connect(addr).await?;
    let (r, w) = stream.split();
    let mut sink = FramedWrite::new(w, BytesCodec::new());

    let mut stream = FramedRead::new(r, BytesCodec::new())
        // filter map Result<BytesMut, Error> stream into just a Bytes stream to match stdout Sink
        // on the event of an Error, log the error and end the stream
        .filter_map(|i| match i {
            //BytesMut into Bytes
            Ok(i) => future::ready(Some(i.freeze())),
            Err(e) => {
              println!("failed to read from socket: {}", e);
              future::ready(None)
            }
        }).map(Ok);

    match future::join(sink.send_all(&mut stdin), stdout.send_all(&mut stream)).await {
      (Err(e), _) | (_, Err(e)) => Err(e.into()),
      _ => Ok(())
    }
  }
}

mod udp {
  use bytes::Bytes;
  use tokio::net::UdpSocket;
  use futures::{Sink, SinkExt, Stream, StreamExt};
  use std::{io, net::SocketAddr, error::Error};

  pub async fn connect(
    remote_addr: &SocketAddr,
    bind_addr: &SocketAddr,
    stdin: impl Stream<Item = Result<Bytes, io::Error>> + Unpin,
    stdout: impl Sink<Bytes, Error = io::Error> + Unpin,
  ) -> Result<(), Box<dyn Error>> {
    let socket = UdpSocket::bind(&bind_addr).await.expect("Failed to bind UDP socket.");
    socket.connect(remote_addr).await?;
    println!("UDP listenning on: {:?}", socket.local_addr());

    tokio::try_join!(send(stdin, &socket), recv(stdout, &socket))?;

    Ok(())
  }

  /// Read out stdin and write it to UdpSocket
  async fn send(
      mut stdin: impl Stream<Item = Result<Bytes, io::Error>> + Unpin,
      writer: &UdpSocket,
  ) -> Result<(), io::Error> {
    while let Some(item) = stdin.next().await {
      let buf = item?;
      writer.send(&buf[..]).await?;
    }

    Ok(())
  }

  /// Read out UdpSocket and write it to stdout
  async fn recv(
      mut stdout: impl Sink<Bytes, Error = io::Error> + Unpin,
      reader: &UdpSocket,
  ) -> Result<(), io::Error> {
    loop {
      let mut buf = vec!(0; 1024);
      let n = reader.recv(&mut buf[..]).await?;
      if n > 0 {
        stdout.send(Bytes::from(buf)).await?;
      }
    }
  }
}
