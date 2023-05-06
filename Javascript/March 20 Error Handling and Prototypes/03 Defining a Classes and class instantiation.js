//  What is a class?

// declaration of class
class Product {
  constructor(n, p, d) {
    // console.log("constructor called!"); // we overwrite the default constructor!!
    // console.log(this); // this is a keyword that points to the same obj we created using the new keywordl
    this.name = n;
    this.price = p;
    this.discountPercent = d;
  }
  display() {
    console.log("This is a product!");
  }
  discountedPrice() {
    let newPrice = this.price * (Math.floor(100 - this.discountPercent) / 100);
    return newPrice;
  }
}

// instantiation of class
//  calling of constructor method: creates an object from the blueprint of a class

const p1 = new Product("iphone", 98700, 10); // whenever an object is created constructor is called.
p1.display();
const p2 = new Product("Android", 65400, 15);

console.log("p1", p1, "p2", p2);
console.log(p1.discountedPrice(), p2.discountedPrice());
