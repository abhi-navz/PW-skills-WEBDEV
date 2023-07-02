const User = require("../models/userModels.js");

exports.home = (req, res) => {
  res.send("<h1>Home Response</h1>");
};

exports.createUser = async (req, res) => {
  try {
    const { name, email } = req.body;

    if (!name || !email) {
      throw new Error("Name and Email are required");
    }

    // chekcing if user already exists
    const userExists = await User.findOne({ email });
    if (userExists) {
      throw new Error("User already exists");
    }

    const user = await User.create({
      name,
      email,
    });
    res.status(201).json({
      succes: true,
      message: "User created succesfully",
      user,
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({
      sucess: false,
      message: error.message,
    });
  }
};

exports.getUsers = async (req, res) => {
  try {
    const user = await User.find({});
    res.status(201).json({
      succes: true,
      message: "List of Users present",
      user,
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({
      sucess: false,
      message: error.message,
    });
  }
};

exports.editUser = async (req, res) => {
  try {
    const userId = req.params.id;
    const user = await User.findByIdAndUpdate(userId, req.body);
    res.status(400).json({
      succes: true,
      message: "User Updated Succesfully",
      user,
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({
      sucess: false,
      message: error.message,
    });
  }
};

exports.deleteUser = async (req, res) => {
  try {
    const userId = req.params.id;
    const user = await User.findByIdAndDelete(userId);
    res.status(400).json({
      succes: true,
      message: "useer deleted Succesfully",
      user,
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({
      sucess: false,
      message: error.message,
    });
  }
};
