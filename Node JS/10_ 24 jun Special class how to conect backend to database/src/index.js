import app from "./app.js";
const port = 3000;

import mongoose from "mongoose";
const dbString =
  "mongodb+srv://abhinavg556:abhi556@hiteshsir.eazcuhm.mongodb.net/";

// const mongoose = require('mongoose');
// mongoose.connect("dbString");

// professional way to connect database;

(async () => {
  try {
    await mongoose.connect(dbString);
    console.log("DB connected Successfully!");

    app.on("error", (err) => {
      console.log("error", err);
      throw err;
    });

    app.listen(port, () => {
      console.log(`Example app listening on port ${port}`);
    });
  } catch (error) {
    console.log("ERROR", error);
    throw error;
  }
})();
