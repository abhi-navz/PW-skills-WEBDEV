function ageInDays(obj, callback) {
  const fullName = obj.firstName + " " + obj.lastName;
  const ageInDays = obj.age * 365;
  const result = callback(fullName, ageInDays);
  return result;
}
function logResult(fullName, ageInDays) {
  console.log(
    `The person's full Name is ${fullName}, and their age in days is ${ageInDays}.`
  );
}

const person = {
  firstName: "Mithun",
  lastName: "S",
  age: 22,
};

ageInDays(person, logResult);
