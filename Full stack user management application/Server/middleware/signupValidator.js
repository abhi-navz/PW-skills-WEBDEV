exports.signupValidator = (req, res, next) => {
  const { name, email, password, bio, username } = req.body;

  if (name && email && password && bio && username) {
    next();
  } else {
    res.status(400).send({ msg: "All input fields are required." });
  }
};
