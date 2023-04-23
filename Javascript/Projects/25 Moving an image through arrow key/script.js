const image = document.getElementById("img");

let x = 100;
let y = 100;
let speed = 5;

let h = 200;
let w = 300;

// listening for keydown events
document.addEventListener("keydown", function (event) {
  // determining which key has been pressed
  switch (event.keyCode) {
    case 37: // left arrow
      x -= speed;
      break;
    case 38:
      y -= speed; // up arrow
      break;
    case 39: // right arrow
      x += speed;
      break;
    case 40: // down arrow
      y += speed;
      break;
    case 13:
      h -= speed;
      w -= speed;
      break;
    case 32:
      h += speed;
      w += speed;
      break;
  }

  //upadating the position of the image
  image.style.top = y + "px";
  image.style.left = x + "px";
  image.style.width = w = "px";
  image.style.height = h + "px";
});
