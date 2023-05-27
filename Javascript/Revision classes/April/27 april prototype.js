const heros = ["spiderman", "thor", "hulk"];
const dcheros = ["superman", "flash", "aquaman"];

const heroPower = {
  thor: "hammer",
  spiderman: "sling",

  getSpideyPower: function () {
    console.log(`spidey power is ${this.spiderman}`);
  },
};

// heroPower.getSpideyPower();

Object.prototype.hitesh = function () {
  console.log("hitesh is present here");
};

// heroPower.hitesh();
// heros.hitesh();
// dcheros.hitesh();

// if I'll add a method specifically under array using Array.prototype.method = function(){}. it won't be avaiable in all objects but in arrays only. It's a example of prototypal inheritacne. array inherits all methods declared for objects but reverse is'nt true

//Prototypal Inheritance

const teacher = {
  role: "teaches",
};
const teachingSupport = {
  isAvailable: true,
};
const student = {
  name: "Abhinav",
  email: "abhinavg556@gmail.com",
};
const TAassistnat = {
  fulltime: true,
  // suppose i want to use the method isAvailable here but can't as it's not available in this objcet.
  // to use it in this object we can inherit the property of object "teachingSupport" here in this object using protoypal inheritance "__proto__ : object_Name"

  //   __proto__: teachingSupport, // this syntax isn't popular and not used much.
};
// TAassistnat.__proto__ = teachingSupport; even this style isn't used much and it's technically same as the previous one.

// *********************************************** Modern Syntax ********************************

Object.setPrototypeOf(TAassistnat, teachingSupport);

console.log(TAassistnat.isAvailable);

// adding a functionality in strings which returns truelength of the string.

String.prototype.trueLength = function () {
  console.log(`True length is: ${this.trim().length}`);
};

let myName = "abhianav     ";
console.log(myName.length);
myName.trueLength();
