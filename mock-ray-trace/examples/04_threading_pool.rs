//! To test server in action, you can use autocannon:
//!
//!     cargo run --example 04_threading_pool
//!     
//!     autocannon -c 100 -l http://localhost/i
//! 

use hello::ThreadPool;
use std::{
  fs,
  io::prelude::*,
  net::{TcpListener, TcpStream},
};


fn main() {
  let listener = TcpListener::bind("127.0.0.1:80").unwrap();
  let pool = ThreadPool::new(4);

  for stream in listener.incoming() {
    let stream = stream.unwrap();
    pool.execute( || {
      handle_connection(stream);
    });
  }
}

fn handle_connection(mut stream: TcpStream) {
  let mut buffer = [0; 1024];
  stream.read(&mut buffer).unwrap();

  let (status, filename) = if buffer.starts_with(b"GET / HTTP/1.1\r\n") {
    ("HTTP/1.1 200 OK", "index.html")
  } else {
    ("HTTP/1.1 404 NOT FOUND", "404.html")
  };

  let contents = fs::read_to_string(filename).unwrap();
  let length = contents.len();
  let response = format!("{status}\r\nContent-Length: {length}\r\n\r\n{contents}");
  stream.write_all(response.as_bytes()).unwrap();
  stream.flush().unwrap();
}


#[allow(dead_code)]
pub mod hello {

  use std:: {
    thread,
    sync::{mpsc, Arc, Mutex}
  };

  pub struct ThreadPool {
    workers: Vec<Worker>,
    sender: mpsc::Sender<Message>,
  }

  type Job = Box<dyn FnOnce() + Send + 'static>;

  enum Message {
    NewJob(Job),
    Terminate,
  }

  impl ThreadPool {
    pub fn new(size: usize) -> ThreadPool {

      assert!(size > 0);

      let (sender, receiver) = mpsc::channel();
      let receiver = Arc::new(Mutex::new(receiver));
      let mut workers = Vec::with_capacity(size);

      for id in 0..size {
        workers.push(Worker::new(id, Arc::clone(&receiver)));
      }
      ThreadPool {workers, sender}
    }

    pub fn execute<F>(&self, f: F)
    where F: FnOnce() + Send + 'static,
    {
      let job = Box::new(f);
      self.sender.send(Message::NewJob(job)).unwrap();
    }
  }

  impl Drop for ThreadPool {
    fn drop(&mut self) {
      for _ in &mut self.workers {
        if let Err(val) = self.sender.send(Message::Terminate) {
          println!("Fail to send Terminate to worker: {}.", val);
        }
      }
      for worker in &mut self.workers {
        if let Some(thread) = worker.thread.take() {
          if let Err(inf) = thread.join() {
            println!("Fail to join thread: {:?}", inf);
          }
        }
      }
    }
  }

  pub struct Worker {
    id: usize,
    thread: Option<thread::JoinHandle<()>>,
  }

  impl Worker {
    fn new(id: usize, receiver: Arc<Mutex<mpsc::Receiver<Message>>>) -> Worker {
      let name = "Worker-".to_string() + &id.to_string();
      let builder = thread::Builder::new().name(name.into());
      let thread = builder.spawn( move || loop {
        let message = receiver.lock().unwrap().recv().unwrap();
        match message {
          Message::NewJob(job) => {
            job();
          }
          Message::Terminate => {
            break;
          }
        }
        // the lock is unlocked here when data goes out of scope.
      }).unwrap();

      Worker {id, thread: Some(thread),}
    }
  }
}
