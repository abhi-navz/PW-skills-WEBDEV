const btn = document.getElementById("btn");
btn.addEventListener("click", find);

function find() {
  const paragraph = document.querySelector("#para");
  const words = paragraph.textContent.split(" "); // split the rext content of paragraph in array of words

  for (let i = 0; i < words.length; i++) {
    if (words[i].length > 8) {
      {
        words[i] = '<span class = "highlight">' + words[i] + "</span>"; // wrapping the word in span with class highlight
      }
    }
  }
  paragraph.innerHTML = words.join(" "); // joining the array of words into string and putting it back into inner html of paragraph
}
