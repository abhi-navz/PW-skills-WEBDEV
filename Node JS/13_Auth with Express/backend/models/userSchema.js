const mongoose = require("mongoose");

const JWT = require("jsonwebtoken");

const userSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: [true, "User Name is required"],
      trim: true,
      minlength: [5, "Name should be atleast 5 characters"],
      maxLength: [30, "Name should be of less than 30 characters"],
    },
    email: {
      type: String,
      unique: [true, "User alrady exists"],
      required: [true, "Email is mandatory"],
      lowercase: true,
    },
    password: {
      type: String,
      select: false,
    },

    forgotPasswordToken: {
      type: String,
    },
    forgotPasswordExpiryDate: {
      type: String,
    },
  },
  {
    timestamps: true,
  }
);

userSchema.methods = {
  jwtToken() {
    return JWT.sign({ id: this._id, email: this.email }, process.env.SECRET, {
      expiresIn: "24h",
    });
  },
};

const userModel = mongoose.model("user", userSchema);
module.exports = userModel;
