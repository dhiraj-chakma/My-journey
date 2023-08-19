// TODO: write your code here!

// select al the buttons
const buttons = document.querySelectorAll(".clickable");

const selectClickedItem = (event) => {
  event.currentTarget.classList.toggle("active");
};

const bindButtonToClick = (button) => {
  button.addEventListener("click", selectClickedItem);
};

buttons.forEach(bindButtonToClick);
