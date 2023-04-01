function find() {
  const item1 = document.querySelector("#item1").value;
  const item2 = document.querySelector("#item2").value;
  const item3 = document.querySelector("#item3").value;
  const item4 = document.querySelector("#item4").value;
  const item5 = document.querySelector("#item5").value;

  const originalCart = [item1, item2, item3, item4, item5];

  const newCart = [...new Set(originalCart)];
  document.querySelector(".output").innerHTML = newCart;
}
