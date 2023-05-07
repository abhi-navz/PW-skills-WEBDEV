class product {
  #name = "Samsung FE 21 5G";
  #rating;

  get newName() {
    // get keyword is use to define the getter. name is getter here.
    console.log(this.#name);
  }
  get rating() {
    console.log(this.#rating);
  }
  set newName(n) {
    // set keyword is used to define the setter,name is setter here.
    this.#name = n;
  }
  set rating(r) {
    if (r < 0) return;
    else this.#rating = r;
  }
}

const p1 = new product();

// getter and setter are called as properties not function.

p1.newName = "Samusng S30 ultra"; // works as setter here
p1.newName; // works as getter here.
p1.newName = "Samsung S22 ultra"; // can be updated.
p1.rating = 4.6;
p1.newName;
p1.rating;
