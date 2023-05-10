class Calculator {
  static add(a, b) {
    const c = a + b;
    console.log(c);
  }
}
const c1 = new Calculator(); 

Calculator.add(3, 4); // static methods are called using class name.
