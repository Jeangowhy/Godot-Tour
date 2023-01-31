use std::thread;
use std::thread::Builder;
use std::time::Duration;

fn main() {
    let builder = Builder::new()
        .name("foo".into())
        .stack_size(32*1024);

    let step = 10;
    let handle = builder.spawn(move || {
        for i in 1..step {
            println!("spawned thread: number {}", i);
            thread::sleep(Duration::from_millis(100));
        }
    }).unwrap();

    for i in 1..step {
        println!("main thread: number {}", i);
        thread::sleep(Duration::from_millis(100));
    }

    handle.join().unwrap(); // wait thread to finishe
    assert_eq!(10, step);
}