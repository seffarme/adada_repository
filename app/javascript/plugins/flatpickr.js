import flatpickr from "flatpickr";
import "flatpickr/dist/themes/airbnb.css"; // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { changeBookedDatesColor } from "./customize_date";

const initFlatpickr = () => {
  const transportData = document.querySelector("#transport");
  const myCart = document.querySelector("#my-cart");
  const bookingForm = document.getElementById("booking-form-div");

  if (bookingForm) {
    const bookings = JSON.parse(bookingForm.dataset.bookings);
    const calendarForm = flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end" })],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      disable: bookings,
      onChange: () => {
        changeBookedDatesColor();
      },
    });

    // CART
    calendarForm.config.onChange.push(function (selectedDates) {
      // Clean HTML
      myCart.innerHTML = "";

      // Days
      const start_date = new Date(selectedDates[0]);
      const end_date = new Date(selectedDates[1]);
      const difference = end_date - start_date;
      const days = Math.ceil(difference / (1000 * 3600 * 24));

      // Price
      const pricePerDayValue = transportData.dataset.price;

      // Total
      const totalPrice = (days + 1) * pricePerDayValue;

      // Generated HTML to be inserted in DOM
      const cartHTML = `
      <div class="text-left">
        <p class="mt-2 ml-4"><span>${
          days + 1
        }</span> days * <span>${pricePerDayValue}</span>€</p>
        <p class="mt-2 ml-4 pb-4 font-weight-bold">Total price: <span id="total-price" data-total-price="${totalPrice}">${totalPrice}€</span></p>
      </div>`;

      days ? myCart.insertAdjacentHTML("afterbegin", cartHTML) : "";
    });
  }
};

export { initFlatpickr };
