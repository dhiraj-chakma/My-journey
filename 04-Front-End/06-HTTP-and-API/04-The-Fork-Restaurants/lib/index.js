const searchForm = document.getElementById("searchForm");
const resultPublish = document.querySelector("#restaurant-list");

// Todo: select the HTML elements you need
const input = document.querySelectorAll(".form-check-input");
let url = "";
const insertResults = (data) => {
  resultPublish.innerHTML = `<li class="list-group-item">What would you like to eat?</li>`;
  data.forEach((names) => {
    resultPublish.insertAdjacentHTML("beforeend", `<li class="list-group-item">${names.name} in ${names.address}</li>`);
  });
};
const place = document.querySelector("#location");

const buildSearchUrl = (where) => {
  input.forEach((btn) => {
    if (btn.checked) {
      url = `https://the-fork-api.students.lewagon.co/api/v1/restaurants?category=${btn.value}&location=`;
    }
  });
  url += where;
};

searchForm.addEventListener("submit", (event) => {
  // Todo: Find the category selected and build the URL you will send your request to
  event.preventDefault();
  const where = place.value;
  buildSearchUrl(where);
  console.log(url);
  // Todo: Replace "the-endpoint-url" with the URL you built
  fetch(url)
    .then(response => response.json())
    .then((data) => {
    // Todo: Insert results into the list
      insertResults(data);
    });
});
