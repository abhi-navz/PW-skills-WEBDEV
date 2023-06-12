//               Promises

// A promise is an object that represents eventual completion or failure of an async operation

// for example : DB call .find({}) , .create({}) --- promise -> sucess or failure.

// creation part of promise

// const promise = new Promise(function (resolve, reject) {
//   setTimeout(() => {
//     console.log("Async task complete");
//     resolve();
//   }, 2000);
// });

// // consumption part of promise;
// promise.then(function () {
//   console.log("Promise consumed!");
// });

// // we don't really need to create a variable or something we can  even directly create a promise;

// new Promise(function (resolve, reject) {
//   setTimeout(() => {
//     console.log("Async task complete2");
//     resolve();
//   }, 2000);
// }).then(function () {
//   console.log("promise consumed");
// });

// const promiseTwo = new Promise((resolve, reject) => {
//   setTimeout(() => {
//     resolve({
//       username: "abhinav",
//       website: "pwskills",
//       email: "something@pw.live",
//     });
//   }, 1000);
// });

// // consuming the data fro promise
// promiseTwo.then((userdata) => {
//   console.log("reslove case:", userdata);
// });

// // error or rejection handling
// const promiseThree = new Promise((resolve, reject) => {
//   setTimeout(() => {
//     let error = false;
//     if (!error) {
//       resolve({
//         username: "abhinav",

//         email: "something@pw.live",
//       });
//     } else {
//       reject("Error: Somethig went wrong!!!");
//     }
//   }, 500);
// });
// promiseThree
//   .then((user) => {
//     console.log("resolve case:", user);
//   })
//   .catch((error) => {
//     console.log(error);
//   })
//   .finally(() => {
//     console.log("The promise is over resolved or rejected");
//   });

/// fetching data through api

fetch("https://jsonplaceholder.typicode.com/posts")
  .then((response) => {
    if (!response.ok) {
      throw new Error("API request failed");
    }
    return response.json();
  })
  .then((data) => {
    // Process the received data
    console.log(data);
  })
  .catch((error) => {
    // Handle any errors that occurred during the request
    console.error(error);
  });

// using async and await
async function fetchdata() {
  try {
    const response = await fetch(
      "https://api.coindesk.com/v1/bpi/currentprice/BTC.json"
    );
    if (!response.ok) {
      throw new Error("API request failed");
    }
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.log(error);
  }
}
fetchdata();
