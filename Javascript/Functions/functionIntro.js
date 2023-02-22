function sum(x, y) {
    let z = x+y;
    console.log("The sum to given inputs is:",z);
    // all the logic of function goes inside the curly braces
}

// sum(3,"4");
// sum("4", 4)
// sum( 3.5, 5)
// sum( 3.4, "abhi")

function isEven(x){
  // it'll take a value and will tell us if the value is even or odd
  // x--> a parameter
  if(x%2 == 0){
    console.log(x, "is even");
  }
  else{
    console.log(x, "is odd.");
  }
}
// isEven(5)
 // the 5 here is actual data being given to the function to check if it's even or odd
 // 5--> argument
//  isEven(456)

function addFourNumbers(x, y, a, b){
    var result = x+y+a+b;
    return result; // return statement terminates the fucntion and below code won't work. 2.gives an output form the function call .
}
function multiply(x ,y) {
    var m = x*y;
    return m;
}

let a = addFourNumbers( 1,2,3,4);
let b = addFourNumbers( 3,45,87, 23);
console.log(a,b);

let m = multiply( a, b);
console.log(m);

