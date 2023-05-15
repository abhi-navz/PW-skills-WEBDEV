// 04. Declare three variables, one using let, one using var, and one using const, all inside a block scope. Assign them values and log their values to the console before and after they are declared to demonstrate variable hoisting.

{
    console.log(x);
    console.log(y);
    console.log(z);

    var x = 55;
    let y = "hello"
    const z = "Abhinav"

    console.log(x);
    console.log(y);
    console.log(z);

}