/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */

import runChallenges from "../spec/list_generator_examiner.js";

const listItem = (content) => {
  // TODO: return the proper <li> HTML tag with its content (as a string)
  // console.log(`${content.classList}`);
  return `<li class="list-group-item">${content}</li>`;
};

const unorderedList = (items) => {
  // TODO: return the proper <ul> markup (as a string)
  let allList = "";
  // iterate over items and put each item inside a list
  items.forEach((element) => {
    // concatenate all the list together
    allList += `<li class="list-group-item">${element}</li>`;
  });
  // put all the list inside a ul
  return `<ul class="list-group">${allList}</ul>`;
};

// Do not remove these lines:
if (typeof window === "object") {
  document.addEventListener("DOMContentLoaded", () => {
    // TODO: call unorderedList() passing the right element
    // TODO: display the list in the browser
    document.querySelector("#list").insertAdjacentHTML("beforeend", unorderedList(['milk', 'butter', 'bread']));
  });
}

runChallenges(listItem, unorderedList); // Do not remove.
export { listItem, unorderedList };
