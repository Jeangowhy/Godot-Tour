
/// The Node Experiment - Exploring Async Basics with Rust
/// https://cfsamson.github.io/book-exploring-async-basics/3_3_the_cpu_and_the_os.html

use std::arch::asm;

fn main() {
    let t = 100;
    let t_ptr: *const usize = &t;
    let x = dereference(t_ptr);

    println!("{}", x);
}

fn dereference(ptr: *const usize) -> usize {
    let mut res: usize;
    unsafe { asm!("mov {0}, [{1}]", out(reg) res, in(reg) ptr) };
    res
}