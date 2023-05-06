// We use try{ } and catch{} code blocks to handle error, we put the risky code inside the try{} block and wheneveer we hit an exception statment or  an error in try{} block , the flow jumps out to catch{} and error is handled, program executes other lines of code normally.

function isEvenOrOdd(x) {
  try {
    if (x % 2 == 0) {
      console.log("Even");
    } else {
      console.lo("odd"); // error here, the flow will jump out of here.
    }
    console.log("ending");
  } catch {
    console.log("Error Handled!");
  } finally {
    // doesn't matter wheathe try{} or catch{} ran completely it the code in finallly{} block always runs.
    console.log("finally: always runs!!");
  }
}

isEvenOrOdd(10);
isEvenOrOdd(13);
console.log("other lines of code!");
