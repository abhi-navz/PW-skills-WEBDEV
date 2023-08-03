const express = require("express");
const { signup, signin, getUser, logout } = require("../controller/authController");
const jwtAuth = require("../middleware/jwtauth");

const authRouter = express.Router();

authRouter.post("/signup", signup);
authRouter.post("/signin",signin);
authRouter.get("/getuser",jwtAuth,  getUser)
authRouter.get("/logout",jwtAuth,  logout)

module.exports = authRouter;
