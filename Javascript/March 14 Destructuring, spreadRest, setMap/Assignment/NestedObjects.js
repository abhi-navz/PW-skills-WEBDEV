const person = {
  Name: "Deepak Patel",
  Age: 22,
  Address: {
    Street: "B8, Block B, Industrial Area",
    City: "Sector 62, Noida",
    State: "Uttar Pradesh",
  },
};

function result(input) {
  const {
    Name,
    Address: { Street: Street },
  } = input;
  const output = { Name, Street};
  return output;
}
console.log(result(person));
