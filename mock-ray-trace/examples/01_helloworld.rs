/// Run this example by command:
///     cargo run --example 01_helloworld

#[allow(unused_imports)]
use std::env::{args, Args};
#[allow(unused_imports)]
use std::{fmt::Display, rc::{Rc, Weak}};

#[allow(dead_code)]
#[allow(unused_variables)]
fn take_ownership<T>(v:T) { }

fn print_scalar(i:i32) { 
    println!("Number is {}", i); 
}


fn main() {
    let mut _args: Args = args();
    let _arg0: String = _args.nth(0).unwrap();
    let _argc: usize = _args.len();
    println!("Hello Rust, argc {}, args[0] is {}", _argc, &_arg0);

    let b  = true;
    take_ownership(&b);  // Scalar type has a Copy trait, borrowing immutable ownership
    println!("This line is ok, boolean is {}", b);

    let i = 256;
    print_scalar(i);     // Scalar type has a Copy trait, pass by value into print_scalar()
    println!("This line is ok, number is {}", i);

    let v = Vector3{x:0.0, y:1.0, z:3.0};
    println!("This line is ok, vector is {}", v);
    take_ownership(&v);  // Non-scalar type has no Copy trait by default, ownership moved.
    // println!("This line cause error {}", v);
    //                                      ^ value borrowed here after move
}

#[allow(dead_code)]
struct Vector3 { 
    x: f32, 
    y: f32, 
    z:f32 
}

/// Implementation for Vector3
#[allow(dead_code)]
impl Vector3 {
    // call it by vector3.z()
    fn z(&self) -> f32 { self.z }

    pub fn to_string(&self) -> String {
        format!("<Vector {},{},{}>", self.x, self.y, self.z)
    }
}

/// Implementation of Display interface for Vector3
#[allow(dead_code)]
impl Display for Vector3 {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&self.to_string())
    }
}

/// Overloading += operator for Vector3
impl std::ops::AddAssign<f32> for Vector3 {
    fn add_assign(&mut self, rhs: f32) {
        self.x += rhs;
        self.y += rhs;
        self.z += rhs;
    }
}
