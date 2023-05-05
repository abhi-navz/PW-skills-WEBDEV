// // You are building a program that takes an array of numbers as input and you need to remove all the duplicates
// from the array. You want to write a function that can accomplish this task efficiently and returns a new set that
// contains only the unique elements.

let numbers = [1, 2, 4, 1, 3, 5, 4, 5, 6, 8, 5, 3, 7, 9];

// we can remove all the duplicates by creating a set from the given array.
function duplicateRemover(inputArr) {
  let uniqueNumbers = new Set(inputArr);
  return uniqueNumbers;
}

const outputArr = duplicateRemover(numbers);
console.log(outputArr);
