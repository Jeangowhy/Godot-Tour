//! To test server in action, you can use autocannon:
//!
//!     cargo run --example 04_threading_server
//!     
//!     autocannon -c 100 -d 5 http://localhost/i
//! 

use std::{
  fs,
  io::{prelude::*, BufReader},
  net::{TcpListener, TcpStream},
  thread,
};

fn main() {
  let listener = TcpListener::bind("127.0.0.1:80").unwrap();

  for stream in listener.incoming() {
    let stream = stream.unwrap();
    thread::spawn( || {
      handle_connection(stream);
    });
  }
}

fn handle_connection(mut stream: TcpStream) {
  let reader = BufReader::new(&mut stream);
  let line = reader.lines().next().unwrap().unwrap();

  let (status, filename) = match &line[..] {
    "GET / HTTP/1.1" => ("HTTP/1.1 200 OK", "index.html"),
    _                => ("HTTP/1.1 404 NOT FOUND", "404.html"),
  };

  let contents = fs::read_to_string(filename).unwrap();
  let length = contents.len();
  let response = format!("{status}\r\nContent-Length: {length}\r\n\r\n{contents}");
  stream.write_all(response.as_bytes()).unwrap();
}


