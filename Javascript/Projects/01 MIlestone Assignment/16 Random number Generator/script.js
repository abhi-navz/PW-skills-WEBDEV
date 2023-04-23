window.onload = () => {
  const randomNum = (() => {
    const min = 1;
    const max = 100;
    return Math.floor(Math.random() * (max - min + 1)) + min;
  })();
  document.getElementById("result").textContent = randomNum;
};
