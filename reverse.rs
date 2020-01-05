use rand::seq::SliceRandom;
use rand::thread_rng;
use std::io;

static DIGITS: [u8; 9] = [1, 2, 3, 4, 5, 6, 7, 8, 9];

fn main() {
    let mut rng = thread_rng();
    let mut numbers: [u8; 9] = DIGITS;
    numbers.shuffle(&mut rng);
    while numbers != DIGITS {
        println!("{:?}", numbers);
        println!("\nFlip how many?");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Oops");
        let num: i8 = input.trim().parse().unwrap();
        numbers[0..num as usize].reverse();
    }
    println!("Success! {:?}", numbers);
}
