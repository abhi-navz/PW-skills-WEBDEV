const submit = document.getElementById("submit");
submit.addEventListener("click", () => {
  const pass = document.getElementById("password").value;
  const conf = document.getElementById("confirmpassword").value;
  if (conf === pass) {
    alert("Password Matched. Password validation Successful.");
  } else {
    alert("Password didn't match. Password validation unsuccessful");
  }
});
