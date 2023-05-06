// let's throw some userdefined errors

function isPrime(x) {
  try {
    for (let i = 2; i <= x - 1; i++) {
      if (x % i == 0) {
        console.log("Not Prime");
        throw new Error("not a prime"); // we can throw user defined errors to debug more efficiently. and whenever we hit the keyword throw it signals a runtime Exception and now we have to handle it.
      }
    }
    console.log("prime");
  } catch (err) {
    // err is the objects that's causing the error, we can go ahead and print it.
    console.log("handled", err);
  } finally {
    console.log("It always prints.");
  }
}
console.log("program further works:");

isPrime(25);
