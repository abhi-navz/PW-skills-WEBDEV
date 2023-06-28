const EventEmitter = require("events");

let eventEmitter = new EventEmitter();

eventEmitter.addListener("subscribe", (msg) => {
  console.log(`Thanks for subscribing to ${msg}`);
});

eventEmitter.emit("subscribe", "College Wallah");
