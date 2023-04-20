window.onload = () => {
  document.getElementById("currentBalance").textContent = customer.balalnce;
  document.getElementById("name").textContent = customer.name;
};

const customer = {
  name: "Abhinav",
  balalnce: 150000,
  withdraw: function (amount) {
    if (amount > this.balalnce) {
      alert("Insufficient Balance!!");
    } else {
      this.balalnce -= amount;
      alert(`Withdrawl of Amount ₹${amount} Sucessfull!.`);
      document.getElementById("currentBalance").textContent = this.balalnce;
    }
  },
  deposit: function (amount) {
    this.balalnce += amount;
    alert(`Deposit of Amount ₹${amount} Sucessfull!. `);
    document.getElementById("currentBalance").textContent = this.balalnce;
  },
};

function withdraw() {
  const amount = parseInt(document.getElementById("amount").value);
  customer.withdraw(amount);
}
function deposit() {
  const amount = parseInt(document.getElementById("amount").value);
  customer.deposit(amount);
}
