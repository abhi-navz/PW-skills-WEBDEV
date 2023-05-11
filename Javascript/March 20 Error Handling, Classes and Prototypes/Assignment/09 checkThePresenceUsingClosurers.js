function numberChecker(arr) {
  return function (num) {
    return arr.includes(num);
  };
}

const arr1 = [1, 2, 3, 4, 5];
const checkNum = numberChecker(arr1);
console.log(checkNum(3));
console.log(checkNum(6));
