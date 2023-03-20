//  Set

const newSet = new Set();
newSet.add(4);
newSet.add("2");
newSet.add(4); // doesn't allow insertion of same elements. no duplicate value allowed.
newSet.add("abhinav");
console.log(newSet);

let arr = [1, 3, 4, 5, 72, 3, 4];

const arrSet = new Set(arr);

console.log(arrSet);
// console.log(arrSet.has(55));
// console.log(arrSet.has(4));
// arrSet.clear()
console.log( arrSet.delete(22), arrSet);



//                                        **************************************************************
//  Map
// Map objects are collections of key-value pairs. A key in the Map may only occur once; it is unique in the Map's collection. 

const map1 = new Map()
map1.set("abhinav", 1 )
map1.set("abhishek", '2' )
map1.set("manisha", '3' )
const arr2 = [ "Subedar" , "kabir"]
map1.set("Nisha", arr2)
map1.set("abhishek", '2' ) // doesn't allow repetition .
console.log(map1);
// console.log(map1.get('abhinav'));
map1.set("manisha", '44' )
// console.log(map1.get('manisha'));
// console.log(map1.size);
console.log(map1.delete("abhinav"));

console.log(map1, map1.size);
// console.log(map1.get('Nisha'));


// creating a map from a given  2D array 

const newArray = [
    ['1', 'Abhishek'],
    ['2', 'Abhinav'],
    ['3', 'Nisha'],
    ['4', 'Manisha'],
    ['4', 'Manisha'],
    ['5', 'Kabir'],
    ['6', 'Subedar'],
    ['6', 'subbu' ]// it overwrites the value of key "6" from subedar to subbu
]

const newMap = new Map()
//    ['1', 'Abhishek']

newArray.map(members => newMap.set( members[0], members[1]))
console.log(newMap);
console.log(newMap.keys());
console.log(newMap.entries());