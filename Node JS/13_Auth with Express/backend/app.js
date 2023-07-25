require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const authRouter = require("./routers/authRouter");
const databaseConnect = require("./config/databaseConfig");

const app = express();
databaseConnect();

app.use(express.json());
// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({ extended: true }));

app.use("/api/auth", authRouter);
app.use("/", (req, res) => {
  res.status(200).json({
    data: "JW Authentication application",
  });
});

module.exports = app;
