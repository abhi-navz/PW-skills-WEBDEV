// Given a number x, check if x is a perfect square or not?

// ex x = 25 --> yes
// ex x = 39 --> NO

// A perfect square is a number that can be represented as a square of another number.
// 25 -> 5*5
// 36 -> 6*6

// x -> floor(root(x)) * floor(root(x))

// Math.squrt(x) = y.zz // ex: 4.13
var x = prompt("Enter the number to be checked if it's a perfect square?");

let y = Math.floor(Math.sqrt(x));
if (y ** 2 == x) {
  console.log("yes");
} else {
  console.log("no");
}
