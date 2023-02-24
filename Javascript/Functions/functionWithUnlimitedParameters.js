// "agrguments" keyword is used to access all the aruments passed. it's like an array but not an actual arryay. it uses .length method to know the size of arguments aassed. 
// it's used when no of arguments to be passed isn't clerar.

function sumOfArgument(x,y){ // even if we will pass the parameters it'll just assign the first values to them.
    let sum=0;
    console.log(x,y);  
    for (let i = 0; i <arguments.length; i++) {
        
        sum += arguments[i];
        
    }
    return sum;

}

console.log(sumOfArgument(3,4,5,6));