const selectSide = (n) => {
  const cards = document.querySelectorAll(`.inlist.n${n} .card-product`)
  cards.forEach((card) => {
    card.addEventListener('click', (event) => {
      cards.forEach(card => {
        card.classList.remove("active")
      })
      event.currentTarget.classList.add("active");
    });
  });
}

const select = () => {
  selectSide(1)
  selectSide(2)
}

export { select };
