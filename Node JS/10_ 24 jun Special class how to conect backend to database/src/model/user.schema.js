import mongoose from "mongoose";

const userSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, "Name is required field"],
    maxLength: [50, "Name should be less than 50 words"],
  },
  email: {
    type: String,
    unique: true,
  },
  userName: {
    type: String,
    unique: true,
  },
  size: String,
});

export default mongoose.model("User", userSchema);

// mongoose will change User to users
