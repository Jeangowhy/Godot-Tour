use std::thread;
use std::time::Duration;
use std::sync::mpsc;

fn main() {
    let (tx1, rx1) = mpsc::channel();
    let (tx2, rx2) = mpsc::channel();

    thread::spawn(move || {
        // wait a start signal
        let step = rx1.recv().unwrap();
        for i in 1..step {
            tx2.send(i).unwrap();
            println!("spawned thread: number {}", i);
            thread::sleep(Duration::from_millis(100));
        }
    });

    // send a start signal
    tx1.send(10).unwrap();

    for i in rx2 {
        println!("main thread: received {}", i);
        thread::sleep(Duration::from_millis(300));
    }
}