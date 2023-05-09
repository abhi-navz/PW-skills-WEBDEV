// Closure

let score = 0;
function one() {
  let score = 100;
  console.log(score);
}
function two() {
  let score = 200;
  console.log(score);
}
function three() {
  let score = 300;
  console.log(score);
}
// one();
// two();
// three();
// console.log(score);

function outerFunction() {
  let outerValue = "I'm an outer Value";
  function innerFuncion() {
    let innerValue = "inner value";
    function innerInnerFunc() {
      let innerinnerValue = "innner inner vale";
      console.log(innerValue, outerValue);
    }
    //console.log(innerinnerValue);// a parent have no acces to inner scope.
    console.log(outerValue);
    innerInnerFunc();
  }
  innerFuncion();
  console.log("outer function ends here");
}

// outerFunction();

// ************ conclusion ***************
// a child scope can have acces of data from parent scope as well as grand parent scope, but a parent scope can't have acces to a child scope.

function outFunction() {
  let outValue = "out value";
  function insideFun() {
    console.log(outValue);
  }
  insideFun(); // see it's done executing here but it still retains the acces to outer scope and that's CLOSURE.
}
outFunction();

// ******************   CLOSURE **************************

// A inside function which is done executing but still retians the access to outerscope

// Exaples of closure

let errorMessage = "file not found";
setTimeout(function () {
  console.log(errorMessage); // the innerfunction have access to outervalue.
}, 1000);

let viewCount = 0;
let items = [1, 3, 8, 9, 8];

items.forEach(function iterator(num) {
  viewCount++;
  console.log(num);
});
console.log("View Count: ", viewCount);
