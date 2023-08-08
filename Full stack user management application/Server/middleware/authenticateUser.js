const JWT = require("jsonwebtoken");

const authenticateUser = (req, res, next) => {
  const token = req.cookies && req.cookies.token;

  if (!token) {
    return res.status(401).json({
      success: false,
      message: "Authorization required. Please log in.",
    });
  }

  try {
    const payload = JWT.verify(token, process.env.SECRET);
    req.user = { id: payload.id, username: payload.username };
    next();
  } catch (error) {
    res.status(401).json({
      success: false,
      message: "Invalid or expired token. Please log in again.",
    });
  }
};

module.exports = authenticateUser;
