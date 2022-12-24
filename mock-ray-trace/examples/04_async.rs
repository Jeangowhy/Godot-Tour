use std::time::{Duration, Instant};
use futures::{/* executor::block_on, */ join};
use async_std::task::block_on;
use async_std::task::sleep;

async fn mock_io(d: u64) -> u64 {
    println!("Wait a async task to commplete...");
    sleep(Duration::from_secs(d)).await;
    println!("async done! [{}]", d);
    thread_blocking(d, false)
}

async fn mock_io_test() {
    let future_1st = mock_io(1);
    let future_2nd = mock_io(2);

    // Run both futures to completion at the same time.
    let result = join!(future_1st, future_2nd);
    assert_eq!(result, (1, 2));
    println!("{:?}", result);
}

fn main() {
    let inst = Instant::now();
    block_on(mock_io_test());
    println!("Elapsed time: {:?}", inst.elapsed());
}

fn thread_blocking(d:u64, block:bool) -> u64 {
    if block {
        // this sleep will blocking current thread
        std::thread::sleep(Duration::from_secs(d));
    }
    d
}