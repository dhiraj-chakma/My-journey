// TODO: Autocomplete the input with AJAX calls.
let url = "";
function getVal() {
  const val = document.querySelector('input').value;
  url = `https://wagon-dictionary.herokuapp.com/autocomplete/${val}`;
}

const displaying = document.querySelector("#results");
// let display = "";
document.addEventListener("change", () => {
  // console.log(url);
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      displaying.innerHTML = "";
      data.words.forEach((word) => {
        displaying.insertAdjacentHTML("beforeend", `<li class="list-group-item">${word}</li>`);
      });
    });
});
