// #![cfg(test)]

use futures::{executor::block_on, join};
use std::thread;
use reqwest;


fn main() {
    get_two_sites_test();
    get_two_sites_async_test();
}

fn download(url: &str) {
    let body = reqwest::blocking::get(url).unwrap().text().unwrap();
    println!("download: {} {}", url, body.splitn(1, ' ').nth(0).unwrap());
}

// #[test]
fn get_two_sites_test() {
    // Spawn two threads to do work.
    let thread_one = thread::spawn(|| download("https://catfact.ninja/fact"));
    let thread_two = thread::spawn(|| download("http://httpbin.org/get"));

    // Wait for both threads to complete.
    thread_one.join().expect("thread one panicked");
    thread_two.join().expect("thread two panicked");
}

async fn download_async(url: &str) {
    let body = reqwest::get(url).await.unwrap().text().await.unwrap();
    println!("download async: {} {}", url, body.splitn(1, ' ').nth(0).unwrap());
}

async fn get_two_sites_async() {
    // Create two different "futures" which, when run to completion,
    // will asynchronously download the webpages.
    let future_one = download_async("https://catfact.ninja/fact");
    let future_two = download_async("http://httpbin.org/get");

    // Run both futures to completion at the same time.
    join!(future_one, future_two);
}

// #[test]
#[tokio::main]
async fn get_two_sites_async_test() {
    block_on(get_two_sites_async());
}

