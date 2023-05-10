function gerPerson(person) {
  try {
    if (typeof person != "object" || !person.name || !person.age) {
      throw "Invalid Parameter Type";
    }
    console.log(`Name:${person.name} , Age: ${person.age}`);
  } catch {
    console.log("Inavlid Parameter Type");
  }
}

const person1 = { name: "Abhinav", age: 22 };
const person2 = { name: "mithun" };
const person3 = ["name", "mithun"];

gerPerson(person1);
gerPerson(person2);
gerPerson(person3);
