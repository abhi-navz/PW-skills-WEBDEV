const powerTwo = (n) => {
    return n ** 2;
}
function powerCube(powerTwo, n){
    return powerTwo(n)*n;
}
// console.log(powerCube(powerTwo,5));

// returning a function

function sayHello(){
    return () =>{
        return "hello Abhinav"   // returning a function
    }
}
let guessValue = sayHello();  
console.log(guessValue);


//  nesting function in HOF
const higherOrder = n =>{
    const oneFun = m =>{
        const twoFun = p =>{
            return n+m+p;
        }
        return twoFun;
    }
    return oneFun;
}

let evaluation = higherOrder(2)(3)(4); // consecutive paranthesis for nested functions
// console.log(evaluation);


// passing an array 

const nums = [ 1,23,34,5];

const sumArray = arr =>{
    let total = 0;
    arr.forEach(element => {  // HOf coz we're taking a function as a parameter, an arrow function
        total+= element
        
    });
    return total;
}

// console.log(sumArray(nums));