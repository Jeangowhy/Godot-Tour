// normal reference version
// error[E0106]: missing lifetime specifier
// = help: this function's return type contains a borrowed value, but the signature 
//         does not say whether it is borrowed from `x` or `y`
//                              ↓ expected named lifetime parameter
// fn longest_v1(x: &str, y: &str) -> &str {
//   if x.len() > y.len() { x } else { y }
// }

// lifetime annotated version
fn longest_v2<'a>(x: &'a str, y: &'a str) -> &'a str {
  if x.len() > y.len() { x } else { y }
}

fn main() {
  let string1 = String::from("abcd");
  let string2 = "xyz";

  let result = longest_v2(string1.as_str(), string2);
  println!("The longest string is {}", result);
  let string3 = string1;
  println!("{}", string3);
}
