import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr"

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ['startDateInput', "endDateInput"]
  connect() {
    const startDateInput = this.startDateInputTarget;
    const endDateInput = this.endDateInputTarget;

    flatpickr(startDateInput, {

    });

    flatpickr(endDateInput, {

    });

  }

}
