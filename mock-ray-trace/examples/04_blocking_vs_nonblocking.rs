use std::{time::{Duration, Instant}, /* thread::sleep */};

use async_std::task::{sleep, block_on};
use futures::join;

async fn non_blocking(s: Duration) {
  sleep(s).await;
}

async fn blocking(s: Duration) {
  block_on(sleep(s)) // blocking asnyc task
  // std::thread::sleep(s) // blocking current thread
}

#[tokio::main]
async fn main() {
  let inst = Instant::now();
  let future1st = non_blocking(Duration::from_millis(1000));
  let future2nd = non_blocking(Duration::from_millis(2000));
  join!(future1st, future2nd);
  println!("Time elapsed [non-blocking]: {:?}", inst.elapsed());
  
  blocking(Duration::from_millis(1000)).await;
  blocking(Duration::from_millis(2000)).await;
  println!("Time elapsed [blocking]: {:?}", inst.elapsed());
}