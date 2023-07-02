const User = require("../models/userModel.js");

exports.home = (req, res) => {
  res.send("<h1>Home Page</h1>");
};

exports.signup = async (req, res) => {
  try {
    const { name, email, password } = req.body;

    if (!name || !email || !password) {
      throw new Error("Name, Email and password are required");
    }

    // chekcing if user already exists
    const userExists = await User.findOne({ email });
    if (userExists) {
      throw new Error("User already exists");
    }

    const user = await User.create({
      name,
      email,
      password,
    });
    res.status(201).json({
      success: true,
      message: "User Registered succesfully",
      user,
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};

exports.login = async (req, res) => {
  try {
    const { email, password } = req.body;
    if (!password || !email) {
      throw new Error("Email and password are required");
    }

    // checking if the use exist in the database
    const user = await User.findOne({ email });
    if (!user) {
      throw new Error("User doesn't exist");
    }

    // validating the password

    if (user.password !== password) {
      throw new Error("Invalid Password");
    }

    res.status(200).json({
      success: true,
      message: "Login Successfull",
      user,
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({
      success: false,
      message: error.message,
    });
  }
};
