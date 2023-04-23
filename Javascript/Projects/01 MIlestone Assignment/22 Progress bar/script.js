const progressBar = document.querySelector(".progressBar");

window.addEventListener("scroll", () => {
  const scrollTop = window.pageYOffset; // calcuates scroll top
  const docHeight = document.body.clientHeight - window.innerHeight; // calcualtes document height
  const scrollPercent = (scrollTop / docHeight) * 100;

  progressBar.style.width = scrollPercent + "%";
});
