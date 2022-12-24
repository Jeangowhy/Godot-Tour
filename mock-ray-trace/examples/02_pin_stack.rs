use std::{pin::Pin, marker::PhantomPinned};

fn main() {
    let mut test1 = Test::new("test1");
    let mut test2 = Test::new("test2");

    // Pinning an object to the stack will always be unsafe if our type implements !Unpin.
    // Pinning a `!Unpin` object to the stack requires `unsafe`
    let mut test1 = unsafe{ Pin::new_unchecked(&mut test1) };
    test1.as_mut().init();
    let mut test2 = unsafe{ Pin::new_unchecked(&mut test2) };
    test2.as_mut().init();

    println!("a: {}, b: {}", test1.as_ref().a(), test1.as_ref().b());
    println!("a: {}, b: {}", test2.as_ref().a(), test2.as_ref().b());

    std::mem::swap(&mut test1, &mut test2);
    // `PhantomPinned` cannot be unpinned
    // test1.get_mut().a = "I've totally changed now!".to_string();

    println!("a: {}, b: {}", test1.as_ref().a(), test1.as_ref().b());
    println!("a: {}, b: {}", test2.as_ref().a(), test2.as_ref().b());
}

#[derive(Debug)]
struct Test {
    a: String,
    b: *const String,
    _marker: PhantomPinned,
}

 impl Test {
    fn new(txt: &str) -> Self {
        Test {
            a: String::from(txt),
            b: std::ptr::null(),
            _marker: PhantomPinned
        }
    }

    fn init(self: Pin<&mut Self>) {
        let this = unsafe { self.get_unchecked_mut() };
        let self_ptr: *const String = &this.a;
        this.b = self_ptr;
    }

    fn a(self: Pin<&Self>) -> &str {
        &self.get_ref().a
    }

    fn b(self: Pin<&Self>) -> &String {
        assert!(!self.b.is_null());
        unsafe { &*(self.b) }
    }
}
