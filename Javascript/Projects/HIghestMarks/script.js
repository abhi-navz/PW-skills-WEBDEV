function highestmarks() {
  const one = document.querySelector("#stdone").value;
  const two = document.querySelector("#stdtwo").value;
  const three = document.querySelector("#stdthree").value;
  const four = document.querySelector("#stdfour").value;
  const five = document.querySelector("#stdfive").value;

  let marks = [one, two, three, four, five];
  const highestMarks = Math.max(...marks);
  let student = marks.indexOf(highestMarks) + 1;

  alert(` The  Highest Mark is: ${highestMarks}`);

  document.querySelector("#result").innerHTML = highestMarks;
}
