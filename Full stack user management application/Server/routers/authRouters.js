const express = require("express");
const { signup, login, getUser } = require("../controller/authController");
const authenticateUser = require("../middleware/authenticateUser");
const { loginValidator } = require("../middleware/loginValidator");
const { signupValidator } = require("../middleware/signupValidator");

const userRoute = express.Router();

userRoute.post("/signup", signupValidator, signup);

userRoute.post("/login", loginValidator, login);
userRoute.get("/", authenticateUser, getUser);

module.exports = {
  userRoute,
};
