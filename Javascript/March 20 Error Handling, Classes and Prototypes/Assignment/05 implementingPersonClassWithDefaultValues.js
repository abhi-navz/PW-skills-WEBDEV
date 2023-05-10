class Person {
  name;
  age;
  constructor(n = "unknown", a = 0) {
    this.name = n;
    this.age = a;
  }
  getDetails() {
    console.log(`Name: ${this.name}, Age: ${this.age}`);
  }
}

const person1 = new Person("Abhinav", 22);
const person2 = new Person()
person1.getDetails();
person2.getDetails()