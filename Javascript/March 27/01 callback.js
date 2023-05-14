// callback is the fucntion which is passsed as an argument in hight order functions.
// A callback fn is a function that is passed as an argument to another function and is executed once the main function has finished executing. The purpose of callback is to allow a function work asynchronously. This is extremely helpful when dealing with the tasks that take a long time to complete or when you want to execute multiple tasks at the same time.
function hof(f) {
  f(); // function f() is callback .
}
hof(() => {
  console.log("Exeuting....");
});

// for example
setTimeout(function () {
  // setTimeout is a hof and the function it takes is a callback function it executes when the setTimeout function has done executing.
  console.log("Done");
}, 2000);

 
// Callback Hell
// Callback hell is a sitiuation in asynchronous programming where multiple levels of nested callbacks make the callbacks difficult to read, understand and maintain. This can occur when you have to execute a series of of asynchronous task, where each task depends upon the output of the previous task and  you need to pass the result of each task to the next one.

// to avoid callback hell there are techniques in javascript such as "promises", and async/await functions.

// Another problem is inversion of control.