class product {
  // class is kinda a like template or blueprint for real life enttities

  constructor(n, p) {
    // javscript can have only one constructor in a class.
    // it's a default method that gets automatically called whenever an object is created, it's the first method to be called and get' called as soon as an objcct is created\

    // console.log("Constructor Called!!");

    this.name = n; // this keyword actually refers to the same empty object we created.
    this.price = p; // -> data members.
    // return {x:10, y:20} if you return an object it'll just obj only. 
  }

  display() {
    // class methods are nothing but functions , they represent a common behviour by all the entities of the class --> member functions.
    console.log("Displaying a product:", this.name, ":", this.price);
  }
}
const p1 = new product("Samsung S22 Ultra", 100000); // the new keyword creates an empty object.
console.log(p1);
// p1.display();

// Before introduction of classes in js, bluerprints were maded using function constructors.

function product2(n, p) {
  // a constructor function
  this.name = n;
  this.price = p;
    // return "abhinav";
//   return { z: 10, y: 29 };
}

const p2 = new product2("Samsung S22 ultra", 100000);
console.log(p2); // works same as the class declared above.

/**
 * 1 -> this keyword in js is different from another languages
 * 2 -> this keyword refers to the context from where we call the function -> isn't applicable to arrow functions
 * 
 * 
 * if you don't return anything js returns the newly created object
 * if you return primitive then also, js returns the newly created obj
 * but if you return a custom object, then js will return this custom obj not the newly created object
 * 
 * function constructors can't be created using arrow fun expression , to create a function constructor we need to use the normal function expressions
 */
