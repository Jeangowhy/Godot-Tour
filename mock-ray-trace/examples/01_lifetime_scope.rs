fn main() {
  let i = 3; // Lifetime for `i` starts. ────────────────┐
  { //                                                   │
      let borrow1 = &i; // `borrow1` lifetime starts. ──┐│
      println!("borrow1: {}", borrow1); //              ││
  } // `borrow1 ends. ──────────────────────────────────┘│
  { //                                                   │
      let borrow2 = &i; // `borrow2` lifetime starts. ──┐│
      println!("borrow2: {}", borrow2); //              ││
  } // `borrow2` ends. ─────────────────────────────────┘│
} // Lifetime ends. ─────────────────────────────────────┘
