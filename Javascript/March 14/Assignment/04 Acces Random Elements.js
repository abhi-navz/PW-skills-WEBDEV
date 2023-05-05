const arr = [1, 2, 3, 4, 5];

function randomNUmber(input) {
  const [a, b, , , c] = input;
  return [a, b, c];
}
const output = randomNUmber(arr);
console.log(output);
