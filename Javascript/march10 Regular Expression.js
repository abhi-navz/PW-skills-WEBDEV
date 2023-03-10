let pattern = "pw";
let regExOne = new RegExp(pattern);

let flag = "gi";
let regExTwo = new RegExp(pattern, flag);

let regExThree = /pw/gi;

const strToCheck =
  "PW is growing at a rapid speed and is provided quality content and recently they are working on Pwskills to create skills based pwcontent";

let result = regExThree.test(strToCheck);
// console.log(result);

let anotherResult = strToCheck.match(regExThree);
// console.log(anotherResult);

const oneMoreResult = strToCheck.replace(regExThree, 'p-w')
// console.log(oneMoreResult);

const webUrl = "https://pwskills.com/hitesh%31choudhary"
const usableUrl = webUrl.replace(/%\d\d/, "_")  // \d for any digit after percnetage second \d is for second digit
console.log(usableUrl);
                            