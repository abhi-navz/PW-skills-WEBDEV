// given a number x, check it is even or odd usng bitwise ooperators only.

/**
 * 
 * 0 -> 0000
 *  1 - 0001
 *  2 - 0010 
 *  3 - 0011
 *  4 - 0100
 *  5 - 0101
 *  6 - 0110
 *  7 - 0111
 *  8 - 1000
 * 
 */

// if we can check if that the last bit of the given number is 0 or 1. 

// if the last bit is 0 -> even, 1 -> odd.

/**
 * // if you do bitwise and with 1, then in the ans except the last bit everything is 0;/
 * 5 - 0101
 * 
 * 5 & 1 ->  odd & 1 -> 1
 *    0 1 0 1
 * &  0 0 0 1 
 * --------------
 *    0 0 0 1
 * 
 * 
 * 6  & 1 --> even & 1 -> 0
 *   0110
 * & 0001
 * -------------
 *  0000 --> 0
 */

let x = 7;
 if(x & 1){
    console.log("Odd");
 }else{
     console.log("even");
 }