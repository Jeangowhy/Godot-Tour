use std::io::{Error, ErrorKind};

fn raises_an_error(yes: bool) -> Result<(), Error> {
    if yes {
        Err(Error::from(ErrorKind::NotFound))
    } else {
        Ok(())
    }
}

fn main(){
    let result = raises_an_error(true);
    // assert_eq!("Kind(NotFound)",  format!("{:?}", result.unwrap_err()));
    // assert_eq!("entity not found)",  format!("{}", result.unwrap_err()));

    let out: String = match result {
        Ok(()) => "return unit tuple".to_string(),
        Err(error) => match error.kind() {
            ErrorKind::NotFound => { "Error: Not Found!".to_string()},
            other_error => { panic!("Unknown error: {:?}", other_error); }
        },
    };
    println!("Output Message: {}", out);
}
