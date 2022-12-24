use proc_macro::TokenStream;

#[proc_macro]
pub fn gen(_input: TokenStream) -> TokenStream {
    println!("TokenStream input: {_input:#?}");
    println!("TokenStream input: {_input:?}");
    "1 + 2".parse().unwrap()
}

/*
pub fn add(left: usize, right: usize) -> usize {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}
*/