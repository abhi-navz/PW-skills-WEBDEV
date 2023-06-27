// OS modules is utilised to retrieve the details  about operating system

const os = require("os");

console.log("CPU Architecture >", os.arch());

console.log("Free Memory in bytes >", os.freemem());

console.log("Total Memory in bytes >", os.totalmem());

console.log("Network Interfaces >", os.networkInterfaces());

console.log("Temporary Directory >", os.tmpdir());

console.log("OS Endianess >", os.endianness());

console.log("Hostname >", os.hostname());

console.log("OS type >", os.type());

console.log("OS release >", os.release());

console.log("OS Platform >", os.platform());

