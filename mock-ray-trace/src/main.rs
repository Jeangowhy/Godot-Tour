
// https://stackoverflow.com/questions/65985081
// error[E0716]: temporary value dropped while borrowed

struct Animal<'a> {
  format: &'a dyn Fn() -> (),
}
impl<'a> Animal<'a> {
  // Getting rid of 'a here satisfies the compiler, why?
  pub fn set_formatter(&mut self, _fmt: &'a dyn Fn() -> ()) -> () {}
  pub fn bark(&self) {}
}

fn main() {
  let x = 0;
  let mut dog: Animal = Animal { format: &|| println!("{}", x) };
  // let mut dog: Animal = Animal { format: &|| {()} };
  dog.set_formatter(&|| {
      // Commenting this out gets rid of the error. Why?
      // println!("{}", x);
  });
  // Commenting this out gets rid of the error. Why?
  dog.bark();
  dbg!(x);
}