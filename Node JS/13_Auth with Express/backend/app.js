require("dotenv").config();
const express = require("express");
const cookieParser = require("cookie-parser");
const authRouter = require("./routers/authRouter");
const cors = require("cors");
const databaseConnect = require("./config/databaseConfig");

const app = express();
databaseConnect();

app.use(cookieParser());
app.use(express.json());

app.use(
  cors({
    origin: [process.env.CLIENT_URL],
    credentials: true,
  })
);

app.use("/api/auth", authRouter);
app.use("/", (req, res) => {
  res.status(200).json({
    data: "JW Authentication application",
  });
});

module.exports = app;
