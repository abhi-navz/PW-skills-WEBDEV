// we all know that handling asynchronous task without blocking the main thread is very important. However Writing and understanding asynchronous code can be difficult. Asynch ans await are syntax provided to make asynchronous code more readable and in a way that looks and behaves more  line synchronous code.

// witt Asynch/await, we can mark a function as asynchronous using the keywoed "async" and use the "await" keyword to wait for the completion of asynchronous task. this make it easier to read and write asynchronous code as well as handle erroe more effectively.

function returnDummyPromise() {
  return new Promise(function exec(resolve, reject) {
    // code here
    setTimeout(function f() {
      console.log("timer completed");

      resolve("done");
    }, 2000);
  });
}

async function consume() {
  console.log("start");
  const response = await returnDummyPromise();
  const response1 = await returnDummyPromise();
  const response2 = await returnDummyPromise();
  console.log("response is", response);
}

consume();
console.log("end");

// the moment js hit the await if throws the flow out of the function and rest of the code is executed.
