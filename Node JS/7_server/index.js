const http = require("http");
const PORT = 3322;
const hostname = "localhost";
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("content-type", "Application/JSON");
  res.end(JSON.stringify({ mentor: "chirag Goel" }));
});

server.listen(PORT, () => {
  console.log(`sever is running on ${hostname}:${PORT}`);
});
