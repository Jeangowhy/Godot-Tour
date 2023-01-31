use std::io::Read;

mod errors {
    use error_chain::error_chain;
    error_chain! {
        // types {
        //     MyError, MyErrorKind, MyResult;
        // }
        foreign_links {
            Io(std::io::Error);
            HttpRequest(reqwest::Error);
        }
    }
}
use errors::*;


fn main() -> Result<()> {

    let v: Vec<u32>;

    let mut res = reqwest::blocking::get("http://httpbin.org/get")?;
    let mut body = String::new();
    res.read_to_string(&mut body)?;

    println!("Status: {}", res.status());
    println!("Headers:\n{:#?}", res.headers());
    println!("Body:\n{}", body);

    Ok(())
}
