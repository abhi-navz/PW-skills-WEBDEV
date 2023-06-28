const fs = require("fs");
// adding content to the file

fs.writeFile(
  "./nodejs_architecture.txt",
  "NOde.js is a plaform that utilzes javascript and is primarily for developing appliations that are highly focused on input/output operations, including but not limited to chat applications and myultimedia streaming websites. The platiform is constructed using Google Chromes's V8 javascript engine. A web application is a type of software that executes on a server and is displayed by a client's broser that contains all the application's resources over the internet",
  (err) => {
    if (err) {
      console.log("Error in writing in the file", err);
    } else {
      console.log("Writing file Succesfull");
    }
  }
);
