require("dotenv").config();
const express = require("express");
const cors = require("cors");
const connectToDb = require("./db.config/db.js");

const userRouters = require("./routes/userRoutes.js");

const app = express();
connectToDb();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

app.use("/", userRouters);

module.exports = app;
