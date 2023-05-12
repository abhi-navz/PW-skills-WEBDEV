// Q. given size of 3 line segments, check that whether using these segments we can make a triangle or not?

// ex: l1 = 7, l2 = 10 , l3 =5
// ans -> "yes we can make a triangel"

// ex: l1 = 1 , l2 = 10; , l3 = 12
// ans -> "No you cannot make a triangel"

// -> sum of two sides should always be greater than the third side, shoud be true for all sides.


let l1 = 1 , l2 = 10, l3 = 13;

if ( (l1+l2)>l3 && (l1+l3)>l3 && ( l2+l3)>l1 ){
    console.log("Yes we can make a triangle");

}else{
    console.log("no we cannot make a triangle");
}