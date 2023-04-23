const cart = [2, 1, 4, 3, 8];

// function to fix cart bug
function fixCart(cart) {
  for (let i = 0; i < cart.length; i++) {
    cart[i] *= 2;
  }
  return cart;
}

console.log("The fixed cart numbers are:", fixCart(cart));
