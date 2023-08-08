const app = require("./app");

const PORT = process.env.PORT || 6766;

app.listen(PORT, () => {
  console.log(`Server is up and running at http://localhost:${PORT}`);
});
