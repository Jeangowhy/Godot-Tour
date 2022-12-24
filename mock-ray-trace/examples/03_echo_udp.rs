//! To see this server in action, you can run this in one terminal:
//!
//!     cargo run --example 03_echo_server
//!
//! and in another terminal you can run:
//!
//!     cargo run --example 03_connect -- --udp 127.0.0.1:8080
//! 

use std::io;
use std::error::Error;

use async_std::net::{UdpSocket, SocketAddr};

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
  let addr = std::env::args()
      .nth(1)
      .unwrap_or("127.0.0.1:8080".to_string());

  let socket = UdpSocket::bind(&addr).await?;
  println!("Echo server listening on: {}", socket.local_addr()?);

  let server = Server {
      socket,
      buf: vec!(0; 1024),
      to_send: None,
  };

  server.run().await?;
  
  Ok(())
}

struct Server {
  socket: UdpSocket,
  buf: Vec<u8>,
  to_send: Option<(usize, SocketAddr)>,
}

impl Server {
  async fn run(self) -> Result<(), io::Error> {
    let Server {
      socket,
      mut buf,
      mut to_send,
    } = self;

    loop {
      if let Some((size, peer)) = to_send {
        let amount = socket.send_to(&buf[..size], &peer).await?;
        println!("Echoed {}/{} to {}", amount, size, peer);
      }
      to_send = Some(socket.recv_from(&mut buf).await?);
    }
  }
}
