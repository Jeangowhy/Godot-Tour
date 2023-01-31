use std::thread;
use std::sync::{mpsc, Arc, Mutex};
use std::time::Duration;

fn main() {
    let (tx, rx) = mpsc::sync_channel::<u32>(1);
    let tx = Arc::new(tx);

    let factorial = 10;
    let foo = Arc::new(Mutex::new(factorial));

    // The two syntaxes below are equivalent.
    // a, b, and foo are all Arcs that point to the same memory location
    // let a = foo.clone();
    // let b = Arc::clone(&foo);

    for _ in 0..5 {
        let txc = tx.clone();
        let bar = foo.clone();
        thread::spawn( move || loop {
        { // lock
            let mut bar = bar.lock().unwrap();
            if *bar < 1 {
                // drop(txc);
                break;
            }
            println!("spawned thread {:?}: {}", thread::current().id(), *bar);
            txc.send(*bar).unwrap();
            *bar -= 1;
        } // unlock
        thread::sleep(Duration::from_millis(100));
        });
    }

    let mut sum = 1;
    while let Ok(i) = rx.recv() {
        if i == 1 {
            break;
        }
        sum *= i;
    }
    println!("factorial {factorial} is {}", sum);
}