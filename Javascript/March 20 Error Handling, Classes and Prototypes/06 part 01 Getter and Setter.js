// Getter and Setter

// self trying.
class product {
  name;
  #rating;
  price;
  #discount;

  constructor(n, p) {
    this.name = n;
    this.price = p;
  }

  set(r, d) {
    this.#rating = r;
    this.#discount = d;
  }
  get() {
    return {
      name: this.name,
      rating: this.#rating,
      price: this.price,
      disount: this.#discount,
    };
  }
}

const p1 = new product("Iphone 14", 99000);
p1.set(4.3, 25);

console.log(p1);
console.log(p1.get());


