const mongoose = require("mongoose");
require("dotenv").config();

const MONGODB_URI = process.env.MONGODB_URI;

const databaseConnect = () => {
  mongoose
    .connect(MONGODB_URI)
    .then((conn) => {
      console.log(`Connected to ${conn.connection.host}`);
    })
    .catch((e) => {
      console.log(e.message);
    });
};

module.exports = databaseConnect;
