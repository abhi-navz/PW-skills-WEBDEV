// //Write a function called "multiplyNumbers" that takes two numbers as arguments and returns their
// product. Use function expressions to define the function and call the function before it is declared to
// demonstrate hoisting.

const result = multiplyNumbers(3, 5);
console.log(result);

const multiplyNumbers = function (x, y) {
  return x * y;
};
// function multiplyNumbers(x, y) {
//   return x * y;
// }
