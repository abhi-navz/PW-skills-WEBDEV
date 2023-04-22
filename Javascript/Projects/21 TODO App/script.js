const addBtn = document.getElementById("addBtn");
addBtn.addEventListener("click", addItem);
const todoList = document.getElementById("todoList");

function addItem() {
  const todoItem = document.getElementById("todoItem").value;
  const item = document.createElement("li");
  item.textContent = todoItem;
  todoList.appendChild(item);
}
