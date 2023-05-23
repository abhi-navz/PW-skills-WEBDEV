// objects in js

//symbolls in js

const key1 = Symbol("key1");
const key2 = Symbol("key2");
const key3 = "key1";

// console.log(key1);
// console.log(key3);
// console.log(key3 === key1);
const obj3 = {
  [key1]: "Abhinav",
  [key2]: "Abhishek", // [key1] referes to component 1, it's not an array but the syntax to refer to the component.
  key3: "Manisha",
  "job role": "teacher",
};
// console.log(obj3.key3);
// console.log(obj3[key1]);
// console.log(obj3[key2]);
// console.log(obj3["job role"]);

const todo = {
  id: 01,
  author: "hitesh",
};

const { id: myId, author: myAuthor } = todo;
console.log(myId);
console.log(myAuthor);
