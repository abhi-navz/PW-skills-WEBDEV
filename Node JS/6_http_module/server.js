const http = require("http");
const { rawListeners } = require("process");

// ------------- creating a server ----------
const server = http.createServer((req, res) => {
  if (req.url === "/") {
    res.write("<h1>Hello, Node.JS!</h1>");
  }
  if (req.url === "/about") {
    res.write("<h1>About Node Js</h1> ");
  }
  res.end();
});

server.listen(5000);

console.log("The HTTP server is running on port 5000");
