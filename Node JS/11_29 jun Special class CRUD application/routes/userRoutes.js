const express = require("express");

const {
  home,
  createUser,
  editUser,
  getUsers,
  deleteUser,
} = require("../controllers/userController.js");

const router = express.Router();

module.exports = router;


router.get("/", home);
router.post("/createuser", createUser);
router.patch("/edituser/:id", editUser);
router.delete("/deleteuser/:id", deleteUser); // instead of id it cna be xyzid too then it shoudl be params.xyzid in  place of parmas.id
router.get("/getusers", getUsers);
