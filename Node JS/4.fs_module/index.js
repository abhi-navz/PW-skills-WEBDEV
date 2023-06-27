//  File System Module

const { log } = require("console");
const fs = require("fs");

// ----------------------------asynchronous approach of reading file-------------------

console.log("Start Reading");

fs.readFile("./4.fs_module/input.txt", (err, data) => {
  if (err) {
    console.log("Error:", err);
  } else {
    console.log("Data:", data.toString());
    console.log("Done Reading");
  }
});

console.log("other stuffs");

// --------------------Sychronous way or reading a file-------------

console.log("Start Reading2");
const data = fs.readFileSync("./4.fs_module/input.txt");
console.log(data.toString());
console.log("Done reading");

//----------------------- Writing in a file (Asynchronous way) ---------------------
console.log("writng starts");
fs.writeFile("./4.fs_module/input.txt", "file got upadated", (err) => {
  if (err) {
    console.log("Error in updating the file", err);
  } else {
    console.log("Update Succes");
  }
});
console.log("writing ends");

// ------------------------ writing the file (synchronous way)----------

console.log("writing starts");
fs.writeFileSync("./4.fs_module/input.txt", "file update via synchronous way");
console.log("writing ends");

// --------------------- Appending data to the file----------------------------

//Asynchronous way
fs.appendFile(
  "./4.fs_module/input.txt",
  "\nLearing FS module by Chirag Goel sir on pw skills",
  "utf-8",
  (err) => {
    if (err) {
      console.log("Error in appending", err);
    } else {
      console.log("Data Succesfully appended");
    }
  }
);

// //Synchronous way
fs.appendFileSync(
  "./4.fs_module/input.txt",
  "\nAdding data through synchronous way",
  "utf-8"
);

// ----------------------------------Deleting a file ------------------

fs.unlink("./4.fs_module/file.txt", (err) => {
  if (err) {
    console.log("Error in deleting the file", err);
  } else {
    console.log("File Deleted Successfully");
  }
});
