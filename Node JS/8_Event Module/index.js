//  -------------------------------- Events module -----------------

// Node js has an inbuilt module known as event moudles
// where we can create , fire and listen for our own events.

const EventEmitter = require("events");

// Initializing EventEmitter Instance
const event = new EventEmitter();

// registering event
// event.on("myevent",()=>{
//     console.log('My name is Abhinav');
// })
// // triggering event
// event.emit("myevent")

// ----------------------------------Removing listener--------------------------

let fun1 = (msg) => {
  console.log("Message from fun1:", msg);
};
let fun2 = (msg) => {
  console.log("Message from fun2:", msg);
};

// registering fun1 and fun2

event.on("myevent", fun1);
event.on("myevent", fun1);
event.on("myevent", fun2);
// event.emit("myevent", "Event Occured"); // three messages will be printed on console

// removing one listener
event.removeListener("myevent", fun1); // one isntance of fun1 will be removed
// event.emit("myevent", "Event Occured"); // two messges will be print on console

// removing all listener
event.removeAllListeners("myevent"); // all listener of 'myevent' will be removed.
event.emit("myevent", "Event Occured"); // nothing will print on console

// --------------Maximum number of event listner -----------------

console.log(
  "The default maximum number of event listener :",
  event.getMaxListeners()
);

// updating the new maximum number of event listner

event.setMaxListeners(5);
console.log(
  "The updated maximum number of event listener :",
  event.getMaxListeners()
);
