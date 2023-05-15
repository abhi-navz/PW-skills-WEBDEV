function doubleArray(arr, callback) {
    const doubledArr = [];
    for (let i = 0; i < arr.length; i++) {
      const doubled = callback(arr[i]);
      doubledArr.push(doubled);
    }
    return doubledArr;
  }
  const arr = [1, 2, 3, 4, 5];

function double(num) {
  return num * 2;
}

const doubledArr = doubleArray(arr, double);
console.log(doubledArr);

