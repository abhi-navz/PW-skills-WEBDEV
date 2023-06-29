const express = require("express");

const PORT = 4005;
const hostname = "localhost";

const app = express();
// registering the server
app.get("/", (req, res) => {
  res.send('<h1 style="color:red;">Hello World, welcome to Express</h1>');
});
app.get("/about", (req, res) => {
  res.send("<h2 style='color:red'>About Express</h2>");
});
app.get("/feature", (req, res) => {
  res.send("Features of  Express");
});

// triggering
app.listen(PORT, () => {
  console.log(`The server is up and running at ${hostname}:${PORT}`);
});
