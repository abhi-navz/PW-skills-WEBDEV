const http = require("http");

const options = {
  hostname: "fakestoreapi.com",
  path: "/products/1",
  method: "GET",
};

const req = http.request(options, (res) => {
  res.on("data", (d) => {
    process.stdout.write(d);
  });
});

req.on("error", (e) => {
  console.log(e);
});

req.end();
