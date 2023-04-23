const button = document.getElementById("btn");
button.addEventListener("click", () => {
  const colors = [
    "#FFFACD",
    "#FF69B4",
    "#B22222",
    "#FF7F50",
    "#F0F8FF",
    "#FFCE30",
    "#E83845",
    "#E389B9",
    "#746AB0",
    "#288BA8",
  ];
  document.body.style.backgroundColor =
    colors[Math.floor(Math.random() * colors.length)];
});
