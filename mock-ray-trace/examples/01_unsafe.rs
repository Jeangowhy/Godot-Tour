/// Unsafe can do:
/// - Dereference a raw pointer `&var as *const i32`
/// - Call an unsafe function or method
/// - Access or modify a mutable `static` variable
/// - Implement an unsafe trait
/// - Access fields of unions
fn main() {
    // unsafe block
    unsafe {
        step_forward();
    }
    let x = 5;
    let raw = &x as *const i32;
    let points_at = unsafe { *raw };
    println!("raw points at {}", points_at);
}

// unsafe function
unsafe fn step_forward() {
    static mut N: i32 = 5;
    N += 1;
    println!("static mut N + 1: {}", N);
}
