function create() {
  let num = document.querySelector("#number").value;

  let output = "";
  for (let row = num; row >= 1; row--) {
    let pattern = "";
    for (let col = 1; col <= row; col++) {
      pattern += "*";
    }
    output += pattern + "\n";
  }
  document.getElementById("output").textContent = output;
  alert(output)
}
