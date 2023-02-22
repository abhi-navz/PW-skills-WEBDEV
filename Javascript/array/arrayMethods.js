let arr = [ 2,3,5,6,5]
// console.log(arr);

arr.push(34);
arr.push(37); // pushes an item in the end
// console.log(arr);
arr.pop() // deletes the last entry
// console.log(arr);
arr.shift() // deletes the first entry
// console.log(arr);
arr.unshift(45); // add to start
// console.log(arr);

// concat

const a = [ 2,3,54]
const b = [ 3,4,5]

const c = a.concat(b)  // adds to array and return another one
// console.log(c);
// console.log(a);


        // slice

let a1 = [ 2,4,5,3,53,534,343,35,53]
// console.log(a1.slice(1,5)); // prints form starting point to end-1

// join
let j = [ 3,4,5,"abhi", 34 ,45]
const str = j.join("#") // will join all the elements with the parameter given, or by commas if ther's no parameter associated.
// console.log(str);


// reverse
let rev = (a1.reverse()); // reverses the original array
// console.log(rev, a );

// indexof
const p = [ 2,343,534,5,34]
// console.log(p.indexOf(343));  // returns the index of the element it its present in the array or returns -1 if it's not present in the arrray

const sp = [ 3,5,6,8, 9,34,5,]
const splice = sp.splice( 2,3, 1,1,1, 1); // removes the specified number of dataitmes from specified position and replaces with the new data itmes given to it.
console.log(sp, splice, sp);


