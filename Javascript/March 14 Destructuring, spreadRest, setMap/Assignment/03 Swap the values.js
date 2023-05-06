//

function swapVariables(x, y) {
  [x, y] = [y, x];
  return [x, y];
}

console.log(swapVariables(3, 4));
console.log(swapVariables(5, 10));
