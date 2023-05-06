// Destructuring in javscript.

let a, b, rest;
[a, b] = [1, 2];
[a, b, ...rest] = [1, 2, 3, 4, 5];
// console.log(a,b,rest);

let arr = [2, 3, 4, 5, 8, 9, 12];

const [d, , , ...rest1] = arr; // in case i, want rest1 to start its values from 5, i'l use two empty entries.
console.log(d, rest1);

// similiarly we can destructure objects on the left side of assignment.
const obj = { g: 1, h: 2 };
const { g, h } = obj;
console.log(g, h);

// default array destructuring and default object destructuring

const [v = 1, n = 46] = [3, 4];
console.log(v, n); // 3,4

const { B = 1, C = 1 } = { B: 3, C: 4 };
console.log(B, C); // 3,4
