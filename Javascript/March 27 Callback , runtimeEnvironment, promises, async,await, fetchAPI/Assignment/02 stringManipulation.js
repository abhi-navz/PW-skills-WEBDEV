function manipulateString(str, callback) {
  const manipulatedString = str.toUpperCase();
  const loggedString = callback(manipulatedString);
  return loggedString;
}
function logString(str) {
  console.log("The manipulated String is:", str);
}

let str1 = "hello, world";
manipulateString(str1, logString);
