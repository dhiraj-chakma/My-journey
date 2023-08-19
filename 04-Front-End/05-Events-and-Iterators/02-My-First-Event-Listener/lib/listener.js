// TODO: React to a click on the button!
// first select the div that you want to work on
const button = document.querySelector("#clickme");

// add an eventlistener click
button.addEventListener("click", (event) => {
  // 1-> when clicked add disabled class with a function
  event.currentTarget.classList.add("disabled");

  // 2-> change innerText from click me to bingo
  event.currentTarget.innerText = "Bingo";
  const audio = new Audio('sound.mp3');
  audio.play();
});
