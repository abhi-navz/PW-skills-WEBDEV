const myHeros = ["spiderman", "thor"];
const dcHeros = ["batman", "flash", "superman"];

const heroPower = {
  spiderman: "sling",
  thor: "hammer",

  flash: "speed",
  getSpiderPower: function () {
    console.log(`Spidey has power of ${this.spiderman}`);
  },
};

// let's declare a prototype
Object.prototype.abhinav = function () {
  console.log("Abhinav is present in all objects now!!"); // the prototpe "abhinav" is now present in all the objects.
};

Array.prototype.heyabhinav = function () {
  console.log("Abhinav is saying hello to arrays!!"); // "heyabhinav" is now present in all arrays.
};

console.log(myHeros.abhinav());
// console.log(dcHeros.abhinav());
console.log(heroPower.abhinav());

console.log(myHeros.heyabhinav());
console.log(dcHeros.heyabhinav());
// console.log(heroPower.heyabhinav()); // not available for all objects .

// ********************** INJECTING PROPERTIES OF ONE OBJECT INTO ANOTHER******************

const user = {
  name: "topName",
  email: "top@gmail.com",
};

const teacher = {
  makeVideos: true,
};

const teachingSupport = {
  isAvailable: false,
};

const TAAssistant = {
  makesAssignment: true,
  fullTime: false,

  // old  way: prototypal inheritance.
  __proto__: teachingSupport, // now it holds are the property of the object "teachingSupport"
};
teachingSupport.__proto__ = user;
// console.log(teachingSupport.name);

//           **************new way************
Object.setPrototypeOf(teachingSupport, teacher); // teachingSupport now has properties of teacher object.

// making a trueLength property of string object which gives true length of string without any spaces.

String.prototype.trueLength = function () {
  console.log(`the true length is ${this.trim().length}`);
};

console.log("     abhinav    ".trueLength());
