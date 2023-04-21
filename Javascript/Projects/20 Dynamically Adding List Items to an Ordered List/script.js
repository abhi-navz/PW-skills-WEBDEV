const items = [
  "HTML and Semantics",
  "Starting with CSS",
  "Working Template",
  "Mobile responsive webpages",
  "Mobile responsive webpages",
  "Projects using HTML & CSS",
  "Version Control and Git",
  "Getting Started with JavaScript",
  "Advance JavaScript",
  "Working with DOM",
  "Making Projects using HTML, CSS and JavaScript",
  "Understanding Fundamental of Computer Science",
  "Getting Started with Database",
  "Understanding the Database",
  "Starting with NodeJS and Express",
  "Understanding React and its Fundamentals",
  "Understanding Hooks and Routers",
  "Starting and Completing Full Fledge Projects",
];
const list = document.getElementById("list");

let counter = 0;

function addItem() {
  if (counter < items.length) {
    const item = document.createElement("li");
    item.textContent = items[counter];
    list.appendChild(item);
    item.style.fontSize = "18px";
    item.style.fontWeight = "700";
    item.style.backgroundColor = "white";
    item.style.textAlign = "center";
    item.style.marginTop = "5px";
    counter++;
  } else {
    alert("All items have been added!");
  }
}
