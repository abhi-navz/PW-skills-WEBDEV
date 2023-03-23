// const mix = document.getElementById("mix");
// mix.addEventListener("click", colormixer);

function colormixer() {
  //   alert("button pressed");
  //   document.getElementById("output").style.backgroundColor = firstcolor;
  //   document.getElementById("outputtext").innerText = secondcolor;

  const firstcolor = document.getElementById("firstcolor").value;
  const secondcolor = document.getElementById("secondcolor").value;

  switch (firstcolor) {
    case "red":
      switch (secondcolor) {
        case "blue":
          document.getElementById("output").style.backgroundColor = "purple";
          document.getElementById("outputtext").innerText = "Purple";
          break;
        case "yellow":
          document.getElementById("output").style.backgroundColor = "orange";
          document.getElementById("outputtext").innerText = "Orange";
          break;

        default:
          alert("Invlaid color combination");
          break;
      }
      break;
    case "blue":
      switch (secondcolor) {
        case "yellow":
          document.getElementById("output").style.backgroundColor = "green";
          document.getElementById("outputtext").innerText = "Green";
          break;

        case "red":
          document.getElementById("output").style.backgroundColor = "purple";
          document.getElementById("outputtext").innerText = "Purple";
          break;

        default:
          alert("Invalid color combination");
          break;
      }
      break;
    case "yellow":
      switch (secondcolor) {
        case "red":
          document.getElementById("output").style.backgroundColor = "orange";
          document.getElementById("outputtext").innerText = "Orange";
          break;

        case "blue":
          document.getElementById("output").style.backgroundColor = "green";
          document.getElementById("outputtext").innerText = "Green";
          break;

        default:
          alert("Invalid color combination");
          break;
      }
      break;
    default:
      alert("Invalid color combination");
      break;
  }
}
