// object method

let std = { age:14, name: "Abhinav" , rollno: 24, marks: 456}

// Object.keys
// it'll give all the keys of an object in a array
const keys = Object.keys(std)
// console.log(keys);

// Object.values
// it'll give allthe values of an object in a array.
const values = Object.values(std)
// console.log(values);

// Object.entries
// it'll give all the entries as key:value pair in arays of size 2
const entries = Object.entries(std)
// console.log(entries);

// Object.freeze
// it'll feeze the object, no key value pair can be updated nor can be remove.
// Object.freeze(std);
// std.age = 25;
// delete std.name;
// // console.log(std);  // nothing changed.

// Object.seal
// it'll not let any key value pair to removed but they can be upadated.

// Object.assign
// it assign the key value pairs of an object to another object.
const x = Object.assign( {}, std);
console.log(std);
console.log(x);
