// Creating an object and manipulating it's data

let obj = { id:101, name:"alex" , salary: 100000}
obj.age = 25
// console.log(obj); 
// console.log(obj.name); // individually accest the value using the key.


//  other way using keyword new.

let student = new Object()
// console.log(student); will print empty object.
student.rollno = 23;
student.age = 18
student.fee = 5000
student.marks = 500
// console.log(student);
// console.log(student.fee);


// using Fucntions to create an object.

function emp( i, n, s)
{
    this.id = i;
    this.name = n;
    this.salary = s;
}
const e1 = new emp(101, "sam" , 15000);
const e2 = new emp(102, "Ram" , 10000);
// updating the value of the key
e2.name = "shyam"
e1["name"] = "Pratap"
// delete the key:value pairs
delete e2.salary;
delete e1.id;
console.log(e1);
console.log(e2);
// console.log(e2.name);




