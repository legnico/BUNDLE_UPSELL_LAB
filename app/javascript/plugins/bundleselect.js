const select = document.querySelectorAll(".card-product").forEach((card) => {
  card.addEventListener('click', (event) => {
    event.currentTarget.classList.toggle("active");
  });
});

export { select };
