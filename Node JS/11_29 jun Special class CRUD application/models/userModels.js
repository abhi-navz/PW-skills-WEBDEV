const mongoose = require("mongoose");

const userSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, "Name is required"],
    trim: true,
    maxLength: [30, "Name should be of less than 30 characters"],
  },
  email: {
    type: String,
    unique: true,
    required: [true, "Email is mandatory"],
  },
});

module.exports = mongoose.model("Users", userSchema);
