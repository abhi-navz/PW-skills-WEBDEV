const app = require("./app.js");

const PORT = process.env.PORT || 8766;

app.listen(PORT, () => {
  console.log(`Server is up and running at http://localhost:${PORT}`);
});
