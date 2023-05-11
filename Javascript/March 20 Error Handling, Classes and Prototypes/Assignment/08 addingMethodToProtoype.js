function Student(name) {
  this.name = name;
}
Student.prototype.printDetails = function () {
  console.log(`Hello my Name is ${this.name}.`);
};

// instantiating a student object and calling the printDetails() methd.
const student = new Student("Mithun");
student.printDetails();
