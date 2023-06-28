const http = require("http");

const PORT = 3310;
const hostname = "localhost";

const server = http.createServer((req, res) => {
  if (req.url === "/") {
    res.write(
      "<h1>I'm happy to learn Full StackWeb Development form Pw Skills</h1>"
    );
  }

  res.end();
});

server.listen(PORT, () => {
  console.log(`The server is up and running at ${hostname}:${PORT}`);
});
