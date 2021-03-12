const modalPrice = () => {
  const bookButton = document.querySelector("#book-now");

  if (bookButton) {
    bookButton.addEventListener("click", (event) => {
      // console.log(priceData);
      console.log(event.currentTarget);

      const priceData = document.querySelector("#total-price");
      const priceValue = priceData.dataset.totalPrice;
      const priceModal = document.querySelector("#price-modal");
      priceModal.insertAdjacentText("beforeend", `${priceValue}€`);
    });
  }
};

export { modalPrice };
