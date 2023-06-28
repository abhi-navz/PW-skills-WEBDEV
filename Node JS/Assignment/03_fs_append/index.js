const fs = require("fs");
const additionalData =
  " Compared to other server-side languages, Node js has distinct advantages. Its synchronous modle and non-blocking I/O operation improve the scalability and perfromance of web applications built on other frameworks. NOde js can easily handle multiple client request without requring multiple threads, consuming less memory and resources Additionally, It is highly scalable and provides high performance. Node js is also flexible with multiple frameworks and the make the development process easier";

fs.appendFile("./nodejs_architecture.txt", additionalData, (err) => {
  if (err) {
    console.log("Error", err);
  } else {
    console.log("Data appended Succesfully");
  }
});
