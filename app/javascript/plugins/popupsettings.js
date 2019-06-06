let modal = document.getElementById("modal");
let close = document.getElementById("close");
const button = document.getElementById("button-modal");
// let wrapper = document.getElementById("upsell-wrapper")

const buttonModal = () => button.addEventListener("click", (e) => {
      e.preventDefault();
      modal.style.display = "block";

    });

const buttonClose = () => close.addEventListener("click", (e) => {
      e.preventDefault();
      modal.style.display = "none";
    });


export { buttonModal, buttonClose };



