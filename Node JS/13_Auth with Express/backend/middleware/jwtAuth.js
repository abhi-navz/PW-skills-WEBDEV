const JWT = require("jsonwebtoken");

const jwtAuth = (req, res, next) => {
  // verify token
  // inject user information in req

  const token = (req.cookies && req.cookies.token) || null;

  if (!token) {
    return res.status(400).json({
      success: false,
      message: "Not authorised",
    });
  }

  try {
    const payload = JWT.verify(token, process.env.SECRET);
    req.user = { id: payload.id, email: payload.email };
  } catch (e) {
    res.status(400).json({
      success: false,
      message: e.message,
    });
  }

  next();
};

module.exports = jwtAuth;
