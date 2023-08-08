const userModel = require("../models/userModels");
const emialValidator = require("email-validator");
const bcrypt = require("bcrypt");

// signup controller
const signup = async (req, res) => {
  try {
    const newUser = userModel(req.body);
    const result = await newUser.save();

    res.status(200).json({
      succes: true,
      message: "Sign Up succesfull",
    });
  } catch (error) {
    res.status(400).json({
      succes: false,
      message: error.message,
    });
  }
};

// login controller

const login = async (req, res) => {
  const { username, password } = req.body;

  try {
    const getuserData = await userModel
      .findOne({ username })
      .select("+password");
    if (getuserData && getuserData.username) {
      const result = await bcrypt.compare(password, getuserData.password);
      if (result) {
        const token = await getuserData.jwtToken();
        const cookieOption = {
          maxAge: 24 * 60 * 60 * 1000, //24hr

          httpOnly: true, //  not able to modify  the cookie in client side
        };

        res.cookie("token", token, cookieOption);
        res.status(200).json({
          success: true,
          data: getuserData,
        });
      } else {
        res.status(404).send({ msg: "Password is Incorrect, Try Again!" });
      }
    } else {
      res
        .status(404)
        .send({ msg: "No Account Found Associated with this username" });
    }
  } catch (e) {
    res.status(400).send({
      message: e.message,
    });
  }
};

// user details

const getUser = async (req, res) => {
  const username = req.user.username;
  console.log("Username:", username);

  try {
    const userData = await userModel.findOne({ username });
    
    if (!userData) {
        return res.status(404).send({ msg: "User not found" });
      }
  
    res.status(200).send({
      msg: "Success",
      data: userData,
    });
  } catch (err) {
    res.status(501).send({ msg: err.message });
  }
};

module.exports = {
  signup,
  login,
  getUser,
};
