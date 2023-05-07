class complexNumber {
  #real;
  #imaginary;

  constructor(r, i) {
    this.#real = r;
    this.#imaginary = i;
  }
  get real() {
    return this.#real;
  }
  get imaginary() {
    return this.#imaginary;
  }

  addComplexNumber(c) {
    this.#real += c.real;
    this.#imaginary += c.imaginary;
  }

  display() {
    console.log(this.#real, " + i", this.#imaginary);
  }
}

const c1 = new complexNumber(3, 2);
const c2 = new complexNumber(4, 3);

c1.addComplexNumber(c2);
c1.display();
