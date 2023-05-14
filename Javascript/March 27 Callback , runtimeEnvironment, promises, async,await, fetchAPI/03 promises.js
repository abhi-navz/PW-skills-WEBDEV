function returnDummyPromise() {
  return new Promise(function exec(resolve, reject) {
    // code here
    setTimeout(function f() {
      console.log("timer completed");
      let randomNumber = Math.random();
      if (randomNumber > 0.5) resolve("done");
      else reject("err");
      
    }, 5000);
  });
}

let p = returnDummyPromise();

p.then(function exec(val) {
  console.log("promised resolved with a value", val);
}) // we can do multiple .then chaining.
  .then(function f() {})
  .catch(function exec2(err) {
    console.log("error in catch of promise", err);
  })
  .finally(function fin() {
    console.log("promise is finally consumed!");
  });
console.log("end");

// promises are'nt going to hamper the synchronous piece of code.they are gonna wait in the micro-task queue.
