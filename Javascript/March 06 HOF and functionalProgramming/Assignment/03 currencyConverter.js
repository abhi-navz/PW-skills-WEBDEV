// The goal is to make a application which takes the list of items and prices stored in a object and returns a new object with prics in Indian National Rupee. Map hof method is to be used here.

const cart = {
  WashingMachine: 315.99,
  Ac: 639.49,
  DishWasher: 125.99,
  freezer: 249.49,
};

let exchnageRate = 80;

let itemsInRupees = Object.keys(cart).map((item) => {
  return { item: cart[item] * exchnageRate };
});
console.log(itemsInRupees);