//  Regular Expressions (Regex)

let pattern = "pw";
let regExone = new RegExp(pattern);

let flag = "gi";

let regExTwo = new RegExp(pattern, flag);
// shortcut way of creating Regular Expression: use of "//"

let regExThree = /pw/gi; // where "pw" is pattern and "gi" is flag. regExTwo === regExThree; // where g repersents global search and i represents incase senstivity
const stringToCheck =
  "PW is growing at rapid speed and recently they are working on Pwskills to create skill based pwcontent";
const result = regExThree.test(stringToCheck);
console.log(result);

const anotherResult = stringToCheck.match(regExThree);
console.log(anotherResult);

const oneMoreResult = stringToCheck.replace(regExThree, "P-W");
console.log(oneMoreResult);

// practical examples of production:::---!!!!

const webUrl = "https://pwskills.com/abhinav%23gupta";
// const usableUrl = webUrl.replace(/%20/, "_")
// console.log(usableUrl);
// but what if %20 is replaced by %30 , we'll have to write another regex as /%30/ to replace it ? NO. insted we case /%\d0/ or /%\d*/ where d stands for digit
// const usableUrl = webUrl.replace(/%\d0/, "_")
// console.log(usableUrl); // but what if the digit changes to %31 or something instead of %20 or %30. then we can use regex pattern /%\d\d/
const usableUrl = webUrl.replace(/%\d\d/, "_");
console.log(usableUrl);

// regexr.com
