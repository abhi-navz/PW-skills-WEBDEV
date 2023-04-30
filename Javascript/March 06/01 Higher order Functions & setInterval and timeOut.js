const powerTwo = (n) => {
  return n ** 2;
};
const powerThree = (powerTwo, n) => {
  return powerTwo(n) * n;
};
console.log(powerThree(powerTwo, 3));

function sayHello() {
  return () => {
    console.log("hello Abhinav");
  };
}
let guessValue = sayHello(); // guessValue hold the return type of sayHello(), which is a function
console.log(guessValue); // return function annonymous.

const higherOrder = (m) => {
  const oneFun = (n) => {
    const twoFun = (p) => {
      return m + n + p;
    };
    return twoFun;
  };
  return oneFun;
};

console.log(higherOrder(3)(4)(5)); // this is how we implement the above kinda functions.

// let's add the value of array together using a hof.

let myNums = [1, 2, 3, 4, 5, 6, 7, 8, 9];
const sumArray = (array) => {
  let total = 0;
  array.forEach((element) => {
    total += element;
  });
  return total;
};

console.log(sumArray(myNums));

const hello = () => {
  console.log("hello Abhinav", Math.random());
};
// setInterval(hello, 1000); //will exectue hello afte every sec;

setTimeout(hello, 5000); // will exectue hello after 5 sec 
