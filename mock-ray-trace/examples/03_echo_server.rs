//! To see this server in action, you can run this in one terminal:
//!
//!     cargo run --example 03_echo_server
//!
//! and in another terminal you can run:
//!
//!     telnet 127.0.0.1 8080
//! 
//!   Ctrl+] open control menu, type c to close session.
//! 
//! or
//!     cargo run --example 03_connect -- --tcp 127.0.0.1:8080
//! 

use std::error::Error;

use tokio::net::{TcpListener, TcpStream};
use tokio::io::{AsyncReadExt, AsyncWriteExt};


#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
  let addr = std::env::args()
      .nth(1)
      .unwrap_or("127.0.0.1:8080".to_string());
  
  let listener = TcpListener::bind(&addr).await?;
  println!("Echo server listening on: {:?}", listener.local_addr());

  loop {
    let (mut socket, _) = listener.accept().await?;
    // clients to be processed concurrently
    tokio::spawn(async move {
      process(&mut socket).await;
    });
  }
}

async fn process(socket: &mut TcpStream) {
  let mut buf = vec!(0; 1024); // new Vec (init value; len)

  loop {
    let n = socket.read(&mut buf).await
        // unwrap Ok value or panic with message.
        .expect("failed to read data from socket.");
      
    if n == 0 {
      return;
    }
    socket.write_all(&buf[0..n]).await
        .expect("failed to write data to socket.");
  }
}
