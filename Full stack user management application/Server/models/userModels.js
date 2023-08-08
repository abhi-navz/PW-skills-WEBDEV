const mongoose = require("mongoose");
const JWT = require("jsonwebtoken");
const bcrypt = require("bcrypt");

const userSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true,
      trim: true,
      minLength: [5, "name should be atleast 5 characters long"],
      maxLength: [15, "Name should be within 15 characters"],
    },
    email: {
      type: String,
      required: [true, "email is mandatory"],
      unique: [true, "user already exists"],
      lowercase: true,
    },
    password: {
      required: true,
      type: String,
      select: false,
    },
    bio: {
      type: String,
      required: true,
      maxLength: [125, "Bio should be within 125 characters"],
    },
    username: {
      type: String,
      required: true,
      unique: [true, "username already exists"],
      minLength: [6, "username should be atlest 6 characters long"],
    },
  },
  {
    timestamps: true,
  }
);

// has password
userSchema.pre("save", async function (next) {
  if (!this.isModified("password")) {
    return next();
  }
  this.password = await bcrypt.hash(this.password, 10);
  return next();
});

// method to generate token
userSchema.methods = {
  jwtToken() {
    return JWT.sign(
      { id: this._id, username: this.username, email: this.email },
      process.env.SECRET,
      {
        expiresIn: "24d",
      }
    );
  },
};

const userModel = mongoose.model("user", userSchema);
module.exports = userModel;
