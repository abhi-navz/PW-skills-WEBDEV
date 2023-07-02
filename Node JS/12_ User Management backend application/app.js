require("dotenv").config();
const express = require("express");
const cors = require("cors");
const connectToDb = require("./db.config/db");
const userRoutes = require(".//routes/userRoutes.js");

const app = express();
connectToDb();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

app.use("/", userRoutes);

module.exports = app;
