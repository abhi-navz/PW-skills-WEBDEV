function ararnge(arr, callback) {
  const titles = arr.map((obj) => {
    return obj.title;
  });
  const alphabeticalOrder = callback(titles);
  return alphabeticalOrder;
}
function alphabeticalOrder(titles) {
  console.log(titles.sort());
}

const list = [
  { title: "Nineteen Eighty-Four", author: "George orwell", year: 1940 },
  { title: "The Great Gatsby", author: "F. Scott Fitzgerald,", year: 1925 },
  { title: "The Alchemist", author: "Paulo Coelho", year: 1988 },
  { title: "The Kite Runner", author: "Khaled Hosseini", year: 2003 },
];

ararnge(list, alphabeticalOrder);
