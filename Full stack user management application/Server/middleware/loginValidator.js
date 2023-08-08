exports.loginValidator = (req, res, next) => {
  const { username, password } = req.body;

  if (username && password) {
    next();
  } else {
    res.status(400).send({ msg: "Email and password are required." });
  }
};
