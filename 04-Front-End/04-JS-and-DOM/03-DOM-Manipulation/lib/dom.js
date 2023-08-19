/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */
import runChallenges from "../spec/examiner.js";

// INSTRUCTIONS - PLEASE READ!!
// Here are some challenges. Solve them from top to bottom

// **Each time** you complete a challenge, please commit and push!
// This is a good practice. Each time you make some progress in software
// development, you want to save a snapshot.


// Ex 1. Read what's written in the email input
//       Make the function getEmail() return it
const getEmail = () => {
  // TODO: return the email
  return document.getElementById("email").value;
};

// /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
const borisesEmail = getEmail();

// Ex 2. Change the content of the email input by writing your own email address
const changeEmail = (newEmail) => {
  document.getElementById("email").value = newEmail;
};

const changedEmail = changeEmail("mamun@gmail.com");

// Ex 3. Replace the email hint (next to the input) with 'This is my email now'
//       The text should be emphasized using a <strong> tag
const emailHint = (txt) => {
  document.getElementById("email-hint").innerHTML = `<strong>${txt}</strong>`;
};
const newHint = emailHint("This is my email now");

// Ex 4. Add the .blue CSS class to the th elements
const th = document.querySelector(".table");
const head = th.querySelectorAll("th");
head.forEach(element => element.classList.add("blue"));

// Ex 5. Count the number of table body rows there are
//       Make the function teamCount() return it
const teamCount = () => {
  // TODO: return the number of teams
  const teams = document.querySelector(".table tbody").rows.length;
  return teams;
};

// /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
const teamCountBeforeAddition = teamCount();

// Ex 6. Say there is a 15th team added to the table.
//       Add a row at the bottom, this new team should have zero points.
const newTeam = () => {
  const teams = document.querySelector(".table tbody");
  return teams.insertAdjacentHTML("beforeend", "<tr><td>15</td><td>Chelsea Fc</td><td>0</td></tr>");
};
newTeam();

// Ex 7. Write some code to sum all points given to all teams
//       Make the function summarizePoints() return it
const summarizePoints = () => {
  // TODO: return the sum
  const teams = document.querySelector(".table tbody");
  // selelcting all the tr as array?
  const team = teams.querySelectorAll("tr");
  // console.log(team);
  let sum = 0;
  team.forEach((element) => {
    // why not adding
    sum += parseInt(element.querySelector(":nth-child(3)").innerText, 10);
  });
  return sum;
};
summarizePoints();


// Ex 8. Change the background color of all `<th>` cells to #DDF4FF
head.forEach((element) => {
  element.style.backgroundColor = "#DDF4FF";
});

// Ex 9. Remove the "Email:" label from the DOM
const remvEl = document.querySelector("label");
remvEl.remove();



// Checking exercise answers. DO NOT MODIFY THIS LINE
runChallenges(borisesEmail, teamCountBeforeAddition, summarizePoints);