function out() {
  const box = document.querySelector(".box");
  box.style.backgroundColor = "red";
  document.querySelector("h1").innerText =
    "You should'nt have left the box!, you're in big trouble now.";
}
function over() {
  const box = document.querySelector(".box");
  box.style.backgroundColor = "green";
  document.querySelector("h1").innerText =
    "yeah good now, keep urself Inside!!";
}
