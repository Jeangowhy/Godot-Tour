use std::{pin::Pin, marker::PhantomPinned};

#[derive(Debug)]
struct Test {
    a: String,
    b: *const String,
    _m: PhantomPinned,
}

impl Test {
    fn new(txt: &str) -> Pin<Box<Self>> {
        let t = Test {
            a: String::from(txt),
            b: std::ptr::null(),
            _m: PhantomPinned,
        };
        let mut boxed = Box::pin(t);
        let self_ptr: *const String = &boxed.a;
        unsafe {
            boxed.as_mut().get_unchecked_mut().b = self_ptr
        };

        boxed
    }

    fn a(self: Pin<&Self>) -> &str {
        // Gets a shared reference out of a pin.
        &self.get_ref().a
    }

    fn b(self: Pin<&Self>) -> &String {
        unsafe{ &*(self.b) }
    }
}

pub fn main() {
    let mut test1 = Test::new("test1");
    let mut test2 = Test::new("test2");

    println!("a: {}, b: {}", test1.as_ref().a(), test1.as_ref().b());
    println!("a: {}, b: {}", test2.as_ref().a(), test2.as_ref().b());
    std::mem::swap(&mut test1, &mut test2);
    unsafe {
        test1.as_mut().get_unchecked_mut().a = "Changed!".to_string();
    }
    println!("a: {}, b: {}", test1.as_ref().a(), test1.as_ref().b());
    println!("a: {}, b: {}", test2.as_ref().a(), test2.as_ref().b());
}
