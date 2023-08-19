// TODO: Call the Weather API when the form is submitted
/* global mapboxgl */

mapboxgl.accessToken = "pk.eyJ1IjoiZGhpcmFqLWJvb2dleW1hbiIsImEiOiJjbGxhdzI5OGIwMjZwM2pvMXAyenJlczg4In0.QG2tTns0Kky5riNNTaUB7g";

// TODO: Create a function to get the weather info
const showMap = (userInput) => {
  // TODO: Construct the URL (with apiKey & userInput) and make the fetch request to the mapbox API
  // here it takes the value of input and uses it as search place
  const url = `https://api.mapbox.com/geocoding/v5/mapbox.places/${document.querySelector(".form-control").value}.json?access_token=pk.eyJ1IjoiZGhpcmFqLWJvb2dleW1hbiIsImEiOiJjbGxhdzI5OGIwMjZwM2pvMXAyenJlczg4In0.QG2tTns0Kky5riNNTaUB7g`;


  fetch(url)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      // TODO: Insert the info into the DOM
      const coordinates = document.querySelector(".font-monospace");
      coordinates.innerText = data.features[0].geometry.coordinates;
      coordinates.innerText += data.features[0].place_name;

      // - Created a map using the Mapbox API and the coordinates
      const map = new mapboxgl.Map({
        container: "map",
        style: "mapbox://styles/mapbox/streets-v9",
        center: [`${data.features[0].geometry.coordinates[0]}`, `${data.features[0].geometry.coordinates[1]}`],
        zoom: 12
      });
      // this code below adds a marker to the coordinates of the map
      new mapboxgl.Marker()
        .setLngLat([`${data.features[0].geometry.coordinates[0]}`, `${data.features[0].geometry.coordinates[1]}`])
        .addTo(map);
    });
};
//
// TODO: Select the form element
// TODO: Add event listener to the form that:
const submit = document.querySelector(".btn");
submit.addEventListener("click", (event) => {
  // - Prevents the default form submission behavior
  event.preventDefault();
  // - Calls the showMap function with the user input as an argument
  showMap(event);
});
