import flatpickr from "flatpickr";
import "flatpickr/dist/themes/airbnb.css"; // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { changeBookedDatesColor } from "./customize_date";

const initFlatpickr = () => {
  const bookingForm = document.getElementById("booking-form-div");

  if (bookingForm) {
    const bookings = JSON.parse(bookingForm.dataset.bookings);
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end" })],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      disable: bookings,
      onChange: () => changeBookedDatesColor(),
    });
  }
};

export { initFlatpickr };
