// defualt Parameters  : defualt parameters act as argument when the user doesn't provide argument while calling the function

function square( x =4){
    return x*x;
}

console.log(square()); // no parameters provided so it'll take x =4 as an argument.
console.log(square(5)); // argument provided as x =5

function multiply( x , y=4){
    return x*y               // default parameters should be provided from the right most parameter to the left.
}
console.log(multiply(5));    // it'll assign x =4, and since second argument is missing it'll take y =4 as defualt argument.



// passing an array as an argument.

let arr = [ 3,4,5]
function addElements([num1, num2, num3]){
    return num1+num2+num3
}
console.log(addElements(arr));

