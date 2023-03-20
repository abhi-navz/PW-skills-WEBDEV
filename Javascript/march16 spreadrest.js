// *********************************Spread and rest******************8

// let's suppose we have two arrays and we wants to join eml.
let a = [1,3,4,2]
let b = [ 5,6,7,8]

// let c = a.concat(b); 
 // it's one way and before 2015 it used to be done this way only, there's one more property "spread" that can be used. 
// 

let c = [...a, ...b]
// spread takes the array and spreads its all elements.
// console.log(c);




// ************************REst**********************************

function manyArgument(){
    let arr = Array.from(arguments)
    let newarr = arr.map( el => el*2)
    console.log(newarr);
}
function manyArgumentV2(...arr) // here ...arr is being used as rest operator which is packing the arguments into an array name arr;
{ 
    // let arr = Array.from(arguments)
    let newarr = arr.map( el => el*2)
    console.log(newarr);
}

manyArgument(1,3) //     expected output [2,6]
manyArgument(1,3,6) // [ 2,6,12]

manyArgumentV2(1,3) // [2,6]


const heros =  [ "spiderman" , "hulk"]
const newheros = [ "thor" , ...heros , "ironman"]
console.log(newheros);

const myname = "Abhinav Gupta"

console.log([...myname]);


function testTwo(...values){
    console.log(values)
}

testTwo("abhinav" , "abhishek")


 
