use std::fmt::Debug;

fn print_it( input: impl Debug + 'static ) {
    println!( "'static value passed in is: {:?}", input );
}

fn main() {
    // i is owned and contains no references, thus it's 'static:
    let i: i32 = 2;
    print_it(i);

    // oops, &i only has the lifetime defined by the scope of main(), 
    // so it's not 'static:
    // print_it(&i);
    // ---------^^-
    // |        |
    // |        borrowed value does not live long enough
    // argument requires that `i` is borrowed for `'static`

    static I: i32 = 1;
    print_it(&I)
  
} // `i` dropped here while still borrowed