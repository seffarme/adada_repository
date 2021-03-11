// Parcour chaque element => si date > today alors + class css created

const applyClassOnElement = (element) => {
  const dateAsString = element.getAttribute("aria-label");
  const dateAsDate = Date.parse(dateAsString);
  if (dateAsDate >= Date.now()) {
    element.classList.add("flatpickr-futurelybooked");
  }
};

const changeBookedDatesColor = () => {
  // Get disabled dates in DOM
  const disabledDates = document.querySelectorAll(".flatpickr-disabled");

  // Loop over qsa and apply class to booked dates (not in past)
  disabledDates.forEach((disabledDate) => applyClassOnElement(disabledDate));
};

export { changeBookedDatesColor };
