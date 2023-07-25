const mongoose = require("mongoose");

const MONGODB_URL =
  process.env.MONGODB_URL 


const databaseConnect = () => {
  mongoose
    .connect(MONGODB_URL)
    .then((conn) => {
      console.log(`Connected to ${conn.connection.host}`);
    })
    .catch((e) => {
      console.log(e.message);
    });
};

module.exports = databaseConnect;
