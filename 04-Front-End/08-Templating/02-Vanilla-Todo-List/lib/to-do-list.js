const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: true }
];

// TODO: Use the template in the `index.html` to dynamically generate a list based on `todos` array
const todoDisplay = document.querySelector("#todosContainer");
const template = document.querySelector("#todoItemTemplate");
// cloning the template to append in display.set true to be visible

//  add to do list in the title section
todos.forEach((element) => {
  const content = template.content.cloneNode(true);
  content.querySelector(".title").innerText = element.title;

  if (element.done) {
    console.log(document.querySelector("input[type=checkbox]"));
    content.querySelector("input[type=checkbox]").checked = true;
  }
  todoDisplay.append(content.querySelector(".shadow-sm"));
});

// content.title.insertAdjacentHTML("beforeend", "<h1>moises caicedo</h1>");
// console.log(content);

// displaying the template which was hidden in another div
