// const input =
// ;

function wordCounter(input) {
  const words = input.split(" ");
  const countWords = new Map();

  words.forEach((word) => {
    if (word in countWords) {
      // "in" keyword is used to check if the object has the key .
      countWords[word]++;
    } else {
      countWords[word] = 1;
    }
  });

  return countWords;
}

const inputString =
  "This is a sample text to test the word count function. This text contains a few repeated words.";
console.log(wordCounter(inputString));
