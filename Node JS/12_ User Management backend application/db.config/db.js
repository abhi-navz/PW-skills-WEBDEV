const mongoose = require("mongoose");

const connectToDb = (async) => {
  mongoose
    .connect(process.env.MONGOURI)
    .then((conn) => {
      console.log(`Conncected to DB: ${conn.connection.host}`);
    })
    .catch((err) => {
      console.log(err.message);
      process.exit(1);
    });
};


module.exports = connectToDb