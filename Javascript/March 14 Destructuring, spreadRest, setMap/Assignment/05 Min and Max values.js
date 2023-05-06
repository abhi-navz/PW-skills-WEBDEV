let input = [1, 2, 5, 7, 9, 22, 87];
function minMax(arr) {
  const max = Math.max(...arr);
  const min = Math.min(...arr);

  const output = { Max: max, Min: min };
  return output;
}

const outputArr = minMax(input);
console.log(outputArr);

const outputArr2 = minMax([12, 44, 65, 87, 56, 89, 45]);
console.log(outputArr2);
