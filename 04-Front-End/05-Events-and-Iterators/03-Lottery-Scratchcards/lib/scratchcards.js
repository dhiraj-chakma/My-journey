// TODO: Write your gambling application here.
// select the scratchcards from the page
const scratchcards = document.querySelectorAll(".scratchcard");

// when clicked it selects the specific scratchcard
scratchcards.forEach((scratchcard) => {
  scratchcard.addEventListener("click", (event) => {
    // select the amount that the user won using dataset
    const balance = document.querySelector("#balance");
    const totalBalance = parseInt(balance.innerText, 10);
    // convert dataset string to integer
    const win = parseInt(scratchcard.dataset.amount, 10);
    // now add the winning amount to the total balance
    if (scratchcard.dataset.scratched === "false") {
      balance.innerText = totalBalance + win;
    }
    if ((totalBalance > 0)) {
      // check if balance is zero than it cant minus 10 otherwise minus 10 with each click
      balance.innerText = totalBalance - 10;
    }
    // make scratched property true user cant use it again
    scratchcard.dataset.scratched = true;
    // add win at the back
    console.log(event);
    // event.insertAdjacentHTML('beforeend', `${win}`);
  });
});
