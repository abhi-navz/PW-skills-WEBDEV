console.log(this);
// && --> both side condition should be true.
// || --> even if one side is true, we we will get true as result.

let isLoggedin = false;
let cardDetails = true;

console.log("Allow Purchase:", isLoggedin && cardDetails);

let age = 16
  // if(age>=18){
  //     console.log("you can vote in election.");
  // }

  age >= 18

  ? console.log("you can vote in election")
  : console.log("you can't vote yet");

// let userDetails;
// console.log(userDetails);
// // userDetails= complexFunctinToGetUserDetailsFromServer
// if(userDetails){
//     console.log("User is logged in");
// }else{
//     console.log("please log in first.");
// }
// if(userDetails){
//     console.log("LogOut");
// }else{
//     console.log("LogIn/SignUp");
// }

//traffic ligh example

// let trafficLight = "green"
// if (trafficLight === "red") {
//     console.log("Stop! you have to wait");
// }
// else if (trafficLight === "yellow") {
//     console.log("Slow Down");
// }
// else if (trafficLight==="green") {
//     console.log("you can go now");

// }else{
//     console.log("Signal is broken, save yourself");
// }

let isUserLogedIn = true;

// if (isUserLogedIn) {
//     console.log("When value is true");
// } else if (isUserLogedIn){
//     console.log("when value is false");
// }

// ternary operator. alternative for if .. else statement.
isUserLogedIn
  ? console.log("When value is true")
  : console.log("when value is false");

// condition? expression for truthy: expression for falsy
