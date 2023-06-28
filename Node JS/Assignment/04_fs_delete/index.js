const fs = require("fs");

fs.unlink(".nodejs_architecture.txt", (err) => {
  if (err) {
    console.log("Error", err);
  } else {
    console.log("File Deleted Sucessfully!!");
  }
});


// file Deleted Succesfully!!