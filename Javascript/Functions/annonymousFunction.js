// annonymous function in js are the functions that doesn't have any name,but can be assigned to a variable.
 
let x = function(){
    console.log("Hello annoymoyus function");
}
x(); // calling the fucntion  with the variable name.


// IIFE : immediately invoked function execution
// it auotmaticelly invoked the functin.

(function(){
    console.log("IIFE");
})(); // last paranthensis is being used to call the function.

(function(name){ // name is parameter
    console.log("hello",name);
})("Abhinav") // arguments can be passed in the paranthesis.