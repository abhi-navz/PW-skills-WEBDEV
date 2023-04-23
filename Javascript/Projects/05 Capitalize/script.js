function capitalize() {
  //   alert("hello");
  const name = document.querySelector("#name").value;
  const capitalized = name.charAt(0).toUpperCase() + name.slice(1);

  //   alert(capitalized);
  document.querySelector("span").innerHTML = capitalized;
}
