class product {
  discount;
  #rating;
  #name;
  description = "a  product";

  constructor(n, p) {
    this.#name = n;
    this.price = p;
    this.#rating = 4.3;
  }

  // static method: can be called without creating an object, it's called as class associated data as it can be called using class_name.static_method(). Static methods are'nt available for an object to be called.
  static customMethod() {
    console.log("calling the custom static method");
  }

  display() {
    console.log(
      "Displaying a product:",
      this.#name,
      ":",
      this.price,
      "and its rating is:",
      this.#rating
    );
  }
}
// product.customMethod();  // can be called before any object instantiation.
const p1 = new product("samsung s23 ultra", 100000);
// p.customMethod(); can't be called by an object.

p1.discount = 34; // can acces the variable name outside the class also becuase these properties are public: .

// we can make the properties private by putting a "#" before the variable name. the private proprties can't be accesed outside the class.
// p1.#name = "s23 plus";  can't be accesed outside.
// p1.#rating = 4.5; can't be accesed either.

// we can access #name and #rating inside the class only, and we can't even see those two outside of the class without the help of a member funtion. this is known as "ABSTRACTION" , we can abstract out data and can hide it from users.
p1.display();
console.log(p1);
