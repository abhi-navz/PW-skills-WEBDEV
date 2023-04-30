// *************************forEach*******************
const arr = [1, 2, 4, 6];
arr.forEach(function (element, index, ar) {
  //   console.log(index,element,ar);
});
arr.forEach((element, index, arr) => {
  //   console.log("Arrow:", index,element,arr);
});

const heros = [
  "nagraj",
  "doga",
  "ironman",
  "hulk",
  "batman",
  "flash",
  "wonderwoman",
  "maniraj",
  "antman",
];
heros.forEach((el) => {
  //   console.log(el.toUpperCase());
});

// ******************filter*********************

const heroswithMan = heros.filter((h) => {
  //   return h.endsWith("man");
  //   return h.endsWith("raj")
});
console.log(heroswithMan);

// **********************Map****************************
//  mpa works exactly same as the forEach loop

heros.map((el) => {
  // console.log(el.toLowerCase());
});

// **********************Reduce method ************
// The reduce() method executes a reducer function for array element.

// The reduce() method returns a single value: the function's accumulated result.

const num = [3, 4, 5, 7];

const sumofNum = num.reduce((prev, curr) => prev + curr, 0);
// console.log(sumofNum);
// console.log(num.reduce(getsum,0));
// function getsum(total,n){
//     return total+n;
// }

// **********************every********************

const gameScore = [23, 533, 876, 98, 09];
console.log(typeof gameScore[0]);
const gameScoreCheck = gameScore.every(
  (v) => typeof v === "number" // "number" but not "Number" as the typeof gameScore[0] is returning return type as "number"
);
console.log("check:", gameScoreCheck);

// ***************** Find ***********************
// it's a greedy method it just returns the first value it finds.

const above500 = gameScore.find((score) => score > 500);
console.log("above:", above500); // it's just returning 533 but not 876

// *********** findIndex*****************
//The findIndex() method returns the index of the first element in an array that satisfies the provided testing function. If no elements satisfy the testing function, -1 is returned.

const age = [33, 44, 76, 66, 22, 29, 19];
const index = age.findIndex((el) => el > 50);
console.log("index:", index);

// ***************sort***************
// The sort() method sorts the elements of an array in place and returns the reference to the same array, now sorted. The default sort order is ascending, built upon converting the elements into strings, then comparing their sequences of UTF-16 code units values.

const months = ["March", "Jan", "Feb", "Dec"];
months.sort();
console.log(months);
// Expected output: Array ["Dec", "Feb", "Jan", "March"]

const array1 = [20010, 1, 30, 4, 21, 100000];
array1.sort();
console.log(array1);
// Expected output: Array [1, 100000, 21, 30, 4]

// ***************** some *********************
// The some() method tests whether at least one element in the array passes the test implemented by the provided function. It returns true if, in the array, it finds an element for which the provided function returns true; otherwise it returns false. It doesn't modify the array.

const array = [1, 2, 33, 44, 3, 5];

// Checks whether an element is even
const even = (element) => element % 2 === 0;

console.log(array.some(even));
// Expected output: true
