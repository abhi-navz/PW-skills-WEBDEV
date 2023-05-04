const one = [1, 2, 3, 4];
const two = [5, 6, 7, 8];
// suppose we have to add this two arrays.
// const three = one.concat(two)
// console.log(three);

// ************************* SPREAD *********************
// another way : is use of spread operator ...one ,...two

const three = [...one, ...two];
// console.log(three);

// ************************  REST ************************

// let's make a function that takes some arguments and returns an array by myltiplying  2 in each elements.
// Arguments: a globla keyword in js, arguments is an array-like object accessible inside functions that contains the values of the arguments passed to that function.
// Array.form() makes array from the given input.

function manyArgument() {
  let arr = Array.from(arguments);
  let myArr = arr.map((el) => el * 2);
  console.log(myArr);
}
manyArgument(2, 4, 6);
manyArgument(2, 3, 4);

// packing the arguments in array is so commonn that the consortium launched a new operator known as rest(... x) which pack values passed in an array.

function manyArgumentV2(...args) {
  let myArgs = args.map((el) => el * 2);
  console.log("V2:", myArgs);
}
manyArgumentV2(3, 4, 5, 6, 7); // 6,8,10,12,14

// few examples;

const name = "Abhinav Gupta";
console.log([...name]); // it spreads every letter of name into an array. here acts as spread operator

function testTwo(...values) {
  console.log(values); // here it'll packs the passed values in an array, hence acting as rest operator.
}
testTwo(3, 4);


