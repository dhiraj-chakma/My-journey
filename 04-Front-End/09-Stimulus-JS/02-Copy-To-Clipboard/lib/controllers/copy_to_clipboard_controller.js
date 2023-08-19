import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["copyInput", "clip"];

  static values = {
    simple: String
  }

  // need a copy() function as a click event listener
  copy(event) {
    // when clicked console.log the value
    // clipboard function is build in js. look in mdn
    navigator.clipboard.writeText(this.copyInputTarget.value);
    this.clipTarget.classList.add("disabled");
    console.log(this.simpleValue);
    this.clipTarget.innerText = this.simpleValue;
  }
}
