// use std::ascii::AsciiExt;

fn main() {
    let v = foo();
    println!("{:?}", v);
}

fn foo() -> Vec<char> {
    let mut data = vec!['a', 'b', 'c'];
    let slice = &mut data[..]; //---+ NLL lifetime begin
    capitalize(slice);         //---+ NLL lifetime end
    data.push('d');

    data
}

fn capitalize(data: &mut [char]) {
    for c in data {
        c.make_ascii_uppercase();
    }
}