class Employee {
  name;
  position;
  salary;

  constructor(n, p, s) {
    this.name = n;
    this.position = p;
    this.salary = s;
  }
  getSalary() {
    console.log(this.salary);
  }
}

const employee1 = new Employee("Abhianv", "SDE" , 88000);
employee1.getSalary();