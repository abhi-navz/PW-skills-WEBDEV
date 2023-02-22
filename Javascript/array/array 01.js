let arr = [1,3,4,"abhinav", true]
console.log(arr);

let a = new Array(10);
console.log(a);

let colors = new Array("blue", "black", "green", "orange")
console.log(colors);

let y = [22, 55, 23.5, 33 ,25];
// position starts from 0 , 1,2,3,4
// in JS arrays are zero based index

// y[0[ --> 22
// y[1[ --> 55
// y[2[ --> 23.5
// y[3[ --> 33
// y[4[ --> 25
console.log(y[0])
console.log(y[1])
console.log(y[2])
console.log(y[3])

console.log(colors[2]);
console.log(colors[55]);

colors[2] = "magenta"
console.log(colors);