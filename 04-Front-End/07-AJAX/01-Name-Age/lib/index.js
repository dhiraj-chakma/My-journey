const agifyApiUrl = "https://api.agify.io/";
const age = document.querySelector("#your-age");

const displayAge = (event) => {
  event.preventDefault();
  const firstName = document.getElementById("first-name").value;
  // TODO: Display your age with an AJAX call instead of the console.log()
  console.log(firstName);
  const url = `https://api.agify.io?name=${firstName}`;
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      age.innerHTML = `You’re ${data.age} years old`;
    });
};

const form = document.getElementById("fetch-age");
form.addEventListener("submit", displayAge);
