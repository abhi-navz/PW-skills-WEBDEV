// const submit = document.getElementById("submit")
// submit.addEventListener("click", calculate())

function calculate() 
{
  let num1 = parseInt(document.getElementById("num1").value)
  let num2 = parseInt(document.getElementById("num2").value);
  let operator = document.getElementById("operator").value;

  let result;
  switch (operator)
   {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      result = num1 / num2;
      break;

    default:
      result = "Invalid Operator!";
      break;

  }

  document.getElementById("result").value = result;
}

