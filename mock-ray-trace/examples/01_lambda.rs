// https://stackoverflow.com/questions/65985081
// temporary value dropped while borrowed

struct Animal<'a> {
  format: &'a dyn Fn() -> (),
}
impl<'a> Animal<'a> {
  pub fn set_formatter(&mut self, _fmt: &'a dyn Fn() -> ()) -> () {}
  pub fn bark(&self) { }
}

fn main() {
  let x = 0;
  let mut dog: Animal = Animal { format: &|| { 
      println!("{}", x) 
      } };
  // dog.set_formatter(&|| {
  //     println!("{}", x)
  //     //             ^ borrowed value does not live long enough
  // });
  dog.bark();
  dbg!(x);
}