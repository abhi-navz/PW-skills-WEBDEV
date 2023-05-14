// javascript doesn't skip code. if it's gonna take a large amout of time , js is gonna wait and execute before going further, the only constrainst is that the code should be native to js.
// because JS is synchronous and single Threaded in nature.

// Example
function timeConsumingTask() {
  for (let i = 0; i < 1000000000; i++) {
    // some code;
  }
}
// console.log("start");
// timeConsumingTask();
// console.log("end");

// Runtime Enviornment enhance the features of javascript.
console.log("Start"); // 01
timeConsumingTask(); // 02
console.log("Starting the timer"); // 03
setTimeout(() => {
  // signals the runtime enviornment
  console.log("Timer completed"); // after completion it'll wait in microtask Queue, and when ther's no global peice of code left, as well as callback stack is empty, then it'll move to call back stack and gets executed. // 07
}, 0);
setTimeout(() => {
  console.log("time completed 2"); // 08
}, 5000);
console.log("Exiting the timer"); // 04
timeConsumingTask(); // 05
console.log("End"); // 06

// whenever javascript sees a runtime based feature, js doesn't execute it itself coz js doens't know how to execute it, it should be executed  in  runtime enviornment

// when js hits line number 18,which is a runtime based feature, Js  trigger and  signals the runtime enviornment about the task and post that it continues execution
// Even if we set the timeout to zero seconds, still it will be executed after the executin of the rest of the code. as js doesn't hamper the flow of code, the runtime based features will executed later.


