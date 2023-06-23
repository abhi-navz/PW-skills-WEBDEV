const { log } = require("console");
const path = require("path");

const filePath1 = "D:Full_Stack_WebDev course PwskillsNode JS";

console.log("separator>", path.sep);

// console.log(process.env.PATH);

console.log("Path Delimiter >", path.delimiter);

const currentPath = __filename;
console.log("Path of the current file >", currentPath);

console.log("baseName >", path.basename(currentPath));

console.log("extension name >", path.extname(currentPath));

console.log("baseNameWithoutExtension >", path.basename(currentPath, ".js"));
console.log("directory name >", path.dirname(currentPath, ".js"));

const pathToFile = path.format({
  dir: "d:Full_Stack_WebDev course PwskillsNode JS",
  base: "index.js",
});

console.log("PathToFile >", pathToFile);

console.log("is currentFilePath Absolute>", path.isAbsolute(currentPath));

console.log("join >" ,path.join('d','fullStack' , 'mysql' , 'db1'));

console.log('Parse >' , path.parse(currentPath));

console.log('Relative path: > ', path.relative('/pw/node/notes/config','/pw/node/notes/js'));

console.log('resolve >' ,path.resolve(__dirname));

console.log('normalize >' , path.normalize('home//pw//node/index'));