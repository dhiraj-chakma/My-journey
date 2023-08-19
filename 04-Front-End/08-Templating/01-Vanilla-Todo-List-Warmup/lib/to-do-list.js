import Mustache from "mustachejs";

const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: true }
];
const transformTodos = todos.map((data) => {
  return {
    title: data.title,
    done: data.done,
    checked: data.done ? "checked" : ""
  };
});

// To-do item HTML 👇
// { <div class="shadow-sm rounded px-4 py-3 mb-2 border d-flex">
//   <input class="d-flex form-check-input me-1" type="checkbox">
//   <div>Replace with to-do title</div>
// </div> }


// TODO: Dynamically generate a list of to-dos based on `todos` array, and display them
// console.log(template);

const checkbox = document.querySelectorAll("input[type=checkbox]");
const template = `
{{#transformTodos}}
<div class="shadow-sm rounded px-4 py-3 mb-2 border d-flex">
<input class="d-flex form-check-input me-1" type="checkbox" {{checked}}>
<div>{{title}}</div>
</div>
{{/transformTodos}}
`;

const output = Mustache.render(template, { transformTodos });
// console.log(output);
const todoList = document.querySelector("#todosContainer");
todoList.insertAdjacentHTML("beforeend", output);
