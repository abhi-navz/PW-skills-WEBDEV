//  Loops in Javascript\
for( let i =0; i<5; i++){
    // console.log(`${i}* ${i} = ${i*i}`);

}

const heros = [ "nagarjun" , 'thor', 'hulk' , 'ironman', 'doga', 'minnalmurali' ]
// for loop 

// const anotherHeros = [];
// for (let i = 0; i < heros.length; i++) {
//     const element = heros[i];
//     console.log(`The fav hero is ${element}`);
    
//     anotherHeros.push(element.toUpperCase())
// }
// console.log(anotherHeros);


// for of loop

for (const element of heros) {
    console.log(`Hero is ${element.toUpperCase()}`);
    
}


