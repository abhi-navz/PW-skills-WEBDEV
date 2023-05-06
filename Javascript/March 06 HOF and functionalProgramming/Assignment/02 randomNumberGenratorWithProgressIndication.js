// Goal is to genrate a random number after delay of 3 sec with progress indication

let delay = 3000; // time in miliseconds
let timeLeft = delay / 1000; // time left in seconds

let timer = setInterval(() => {
  timeLeft--;
  console.log(`Genrating random number in ${timeLeft} seconds...`);
  if (timeLeft <= 0) {
    clearInterval(timer);
    let randomNumber = Math.floor(Math.random() * 100000);
    console.log(`Random number generated: ${randomNumber}`);
  }
}, 1000);

