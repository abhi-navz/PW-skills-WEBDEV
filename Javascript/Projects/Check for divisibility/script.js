let numbers = [3, 4, 2, 6, 9, 12, 13, 44, 66,99];
for (let i = 0; i < numbers.length; i++) {
  const num = numbers[i];
  if (num % 2 === 0) {
    continue;
  }
  if (num % 3 === 0) {
    console.log(num);
  }
}

