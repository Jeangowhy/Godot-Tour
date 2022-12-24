
fn main() {
    let x: &'static i32 = &1; // x has a static lifetime
    let y: &'static str = "y"; // non-static temporary variable
    static Z: &str = "Z";
    let closure: &'static dyn Fn() = &|| {
        //        ^^^^^^^ type annotation requires that borrow lasts for 'static
        // println!("{}", x);
        //                ^ type annotation requires 'x' is borrowed for 'static
        //                  buf 'x' does not live long enough.
        // println!("{}", y);
        println!("{}", Z); // Z reference captured by closure
    };
    closure();
    dbg!(x, y, Z);
} // 'x' dropped here while still borrowed!
// 'static lifetime trait bound live as loon as programme running.
