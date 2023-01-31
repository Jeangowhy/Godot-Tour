// The Rust Programming Language - Thinking in Rust
// - [Functional Language Features: Iterators and Closures](ch13-00-functional-features.md)
// - [temporary value dropped while borrowed](https://stackoverflow.com/questions/65985081)

struct Animal<'a> {
  print: &'a dyn Fn() -> (),
}
impl<'a> Animal<'a> {
  pub fn set_print(&mut self, _fun: &'a dyn Fn() -> ()) -> () {
    self.print = _fun;
  }
  pub fn bark(&self) { 
    (self.print)();
  }
}

fn main() {
  let x = 999;
  let mut dog: Animal = Animal { print: &|| { 
      println!("dog print {}", x) 
      } };

  let bind = || { println!("dog barking: {}", x)};
  dog.set_print(&bind);
  dog.bark();
  dbg!(x);

  // dog.set_print(&|| {
  //     println!("{}", x)
  //     //             ^ borrowed value does not live long enough
  // });
  // temporary value (lambda) is freed at the end of this statement, at } symbol.
  // dog.bark();
  // ---------- borrow later used here
}
