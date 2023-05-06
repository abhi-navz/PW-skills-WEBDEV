// +++++++++++++++++++++++++++++++++++++++++ SET +++++++++++++++++++++++++++++++++++++++
// Set object lets you store unique values of any type. It's like an array but with unique values and no repetion, it takes care of repetition and order of the values.

const newSet = new Set();
newSet.add(2);
newSet.add(3);
newSet.add(2);
newSet.add(1);

console.log(newSet);
console.log(newSet.delete(3)); // informs by boolean value if the passed value is deleted or not.
console.log(newSet);

const arr = [1, 2, 3, 4, 2, 3, 5];
const arrSet = new Set(arr);

console.log(arrSet.has(9));
console.log(arrSet.has(4));
arrSet.clear();
console.log(arrSet);

// +++++++++++++++++++++++++++++++++++++++ MAP ++++++++++++++++++++++++++++++++++++

const myMap = new Map();
myMap.set("name1", "Abhinav");
myMap.set("name2", "Abhishek");
console.log(myMap);
const newArray = [
  ["1", "Abhishek"],
  ["2", "Abhinav"],
  ["3", "Nisha"],
  ["4", "Manisha"],
  ["4", "Manisha"],
  ["5", "Kabir"],
  ["6", "Subedar"],
  ["6", "subbu"], // it'll overwrite the value of key 6.
];
// now the goal is to make a map from the given 2d Array.
// first we'll have to loop through each element.

newArray.forEach((el) => myMap.set(el[0], el[1]));
console.log(myMap);
console.log(myMap.has("name2", "Abhishek")); // true.
myMap.delete("1", "Abhishek");
console.log(myMap);
// console.log(myMap.clear()); // clears the map
// console.log(myMap);
console.log(myMap.entries());
console.log(myMap.get("3"));
console.log(myMap.keys());
console.log(myMap.values());
console.log(myMap.size);
myMap.forEach((el, el2) => console.log(el, ":", el2)); // foreach(value, key)
