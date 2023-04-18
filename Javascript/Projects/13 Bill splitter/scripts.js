function split() {
  const item1 = document.querySelector("#item1").value;
  const item2 = document.querySelector("#item2").value;
  const item3 = document.querySelector("#item3").value;
  const item4 = document.querySelector("#item4").value;
  const item5 = document.querySelector("#item5").value;

  const noOfPeople = document.querySelector("#noOfPerson").value;

  let totalbill =
    parseInt(item1) +
    parseInt(item2) +
    parseInt(item3) +
    parseInt(item4) +
    parseInt(item5);
  let eachbill = totalbill / noOfPeople;

  document.querySelector("#totalbill").innerHTML = totalbill;
  document.querySelector("#eachbill").innerHTML = eachbill;
}
