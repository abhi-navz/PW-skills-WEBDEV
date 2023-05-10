function convertToNumber(str) {
  try {
    // let num = str * 1;
    const num = Number(str);
    if (Number.isNaN(num)) {
      throw new Error("Invalid Number");
    }
    console.log(num);
  } catch {
    console.log("Invalid Number");
  }
}
convertToNumber("123");
convertToNumber("Hello");
