// lib/controllers/event_listener_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  // add a eventlistener or action of stimulus that will run the function disable
  // create disable() function which will add a disabled class in the button
  disable(event) {
    event.currentTarget.classList.add("disabled");
    // also change the innerText into Bingo!
    event.currentTarget.innerText = "Bingo!";
    // play the audio
    const audio = new Audio('sound.mp3');
    audio.play();
  }
};
