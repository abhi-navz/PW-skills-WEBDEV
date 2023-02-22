function abc(){
    console.log("hello to functions");
    return; // returning no value will also be returned as "undefined" by js
}

// abc(33);
 // giving anrgumetn to a function which doesn't have any parameter is of no use it'll call the function as it is but it'll the ignore the existence of argument.

let h = abc();
console.log(h); // when you don't define the return statement of a fucntion , js by default returns it as "undefined"