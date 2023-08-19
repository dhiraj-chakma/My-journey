const displayAlertOnButtonClick = () => {
  // TODO: Select the big green button
  const greenBtn = document.querySelector(".btn");
  // TODO: Bind the `click` event to the button
  greenBtn.addEventListener("click", (event) => {
    // TODO: On click, display `Thank you!` in a JavaScript alert!
    alert("Thank you!");
  });
};

displayAlertOnButtonClick(); // Do not remove!
