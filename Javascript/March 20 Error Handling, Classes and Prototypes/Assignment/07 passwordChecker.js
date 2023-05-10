class User {
  username;
  password;
  constructor(u, p) {
    this.username = u;
    this.password = p;
  }
  get getPassword() {
    console.log(this.password.replace(/./g, "*"));
  }
  set setPassword(newPassword) {
    const testPassword = /^(?=.*\d)(?=.*[A-Z])[a-zA-Z\d]{8,}$/;
    if (testPassword.test(newPassword)) {
      this.password = newPassword;
    } else {
      console.error(
        "Error: Password must be atleast 8 characters long and must contain a number and a Upper Case letter."
      );
    }
  }
}
const user1 = new User("abhinav", "Varanasi@123");
// user1.getPassword;
user1.setPassword = "abhina8vgu";
user1.getPassword;
user1.setPassword = "Aabhinjjhj";
user1.getPassword;
user1.setPassword = "Abhi5766";
user1.getPassword;
