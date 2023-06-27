const http = require("http");
const PORT = 3325;
const hostname = "localhost";
const server = http.createServer((req, res) => {
  if (req.url === "/") {
    res.statusCode = 200;
    res.setHeader("content-type", "Application/JSON");
    res.end(
      JSON.stringify({
        mentor: "Chirag Goel",
      })
    );
  } else if (req.url === "/about") {
    res.statusCode = 200;
    res.setHeader("content-type", "text/plain");
    res.end("About Page");
  } else if (req.url === "/contact") {
    res.statusCode = 200;
    res.setHeader("content-type", "text/plain");
    res.end("contact Page");
  } else {
    res.statusCode = 500;
    res.setHeader("content-type", "text/plain");
    res.end("Page not Found ");
  }
});

server.listen(PORT, () => {
  console.log(`sever is running on ${hostname}:${PORT}`);
});
