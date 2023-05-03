// Reversing of string after timeout of 2sec.

let input = "Pw is a great platform to learn tech based skills";

// reversing using split, reverse, and join methods.

setTimeout(() => {
  let output = input.split("").reverse().join("");
    console.log(output);
}, 2000);

// reversing using for loop
let reversedString = "";
for (let i = input.length - 1; i >= 0; i--) {
  reversedString += input[i];
}
setTimeout(() => {
    console.log(reversedString);
}, 2000);

// using reduce method

let reversed = input.split("").reduce((prev, curr) => curr + prev, "");

setTimeout(() => {
    console.log(reversed);
}, 2000);