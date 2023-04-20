const calculateTotal = () => {
  const cart = [
    {
      unitPrice: Number(document.querySelector("#item1Price").value),
      qunatity: Number(document.getElementById("item1Quantity").value),
    },
    {
      unitPrice: Number(document.querySelector("#item2Price").value),
      qunatity: Number(document.getElementById("item2Quantity").value),
    },
    {
      unitPrice: Number(document.querySelector("#item3Price").value),
      qunatity: Number(document.getElementById("item3Quantity").value),
    },
    {
      unitPrice: Number(document.querySelector("#item4Price").value),
      qunatity: Number(document.getElementById("item4Quantity").value),
    },
  ];
  let totalCost = 0;
  cart.forEach((item) => {
    totalCost += item.unitPrice * item.qunatity;
  });
  document.getElementById("output").innerText = totalCost;
};
