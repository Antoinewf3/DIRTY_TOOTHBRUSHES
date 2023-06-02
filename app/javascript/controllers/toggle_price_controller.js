import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-price"
export default class extends Controller {
  static targets = ["checkbox", "minusPrice", "plusPrice"]
  connect() {
  }

  toggleSwitch() {
    const isChecked = this.checkboxTarget.checked;
    this.plusPriceTarget.classList.toggle("d-none", !isChecked);
    this.minusPriceTarget.classList.toggle("d-none", isChecked);
  }
}
