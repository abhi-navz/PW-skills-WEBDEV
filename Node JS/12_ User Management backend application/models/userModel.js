const mongoose = require("mongoose");

const userDetails = new mongoose.Schema({
  name: {
    type: String,
    required: [true, "Name is required"],
    trim: true,
    maxLength: [30, "Name should be of less than 30 characters"],
  },
  email: {
    type: String,
    unique: true,
    required: [true, "Email Id is required"],
    maxLength: [30, " Email should be under 30 characters"],
  },
  password: {
    type: String,
    required: [true, "password is mandatory field"],
  },
});

module.exports = mongoose.model("Users", userDetails);
