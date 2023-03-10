let arr = [ 1,3,5]
arr.forEach(function(ele, i, arr){
    // console.log(i ,ele, arr);
});

const heroes =[ "ironman", "spiderman","thor","Krish", "jeevan"]
heroes.forEach(element => {
//    console.log(element.toUpperCase());
});

// filter

const heroesWithMan = heroes.filter((h) => {
    return h.endsWith('man') // return keyword is important here
})
// console.log(heroes);
// console.log(heroesWithMan);


//  #reduce

const cartBill = [ 20,30, 50]
const sumOfCartBill = cartBill.reduce((prev, curr) => 
    prev+curr, 0
)
// console.log(sumOfCartBill);

// # every method
const gameScore = [ 200,315, 234, 435, 238, 123]
const gameScoreCheck = gameScore.every((v) => 
    typeof v === "number"
)
// console.log("check:", gameScoreCheck);

//  # find method : it's a greedy method it just return the first value that satisfies the condition

const above200 = gameScore.find((value) => value> 200)
console.log("above:", above200);

// some other methods are "findIndex" , "some" , "sort"