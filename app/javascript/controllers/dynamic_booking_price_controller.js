import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-booking-price"
export default class extends Controller {
  static targets = ['startDateInput', 'endDateInput', 'priceHolder'];
  static values = { price: Number }
  connect() {
  }

  updatePrice() {
    const startDate = this.startDateInputTarget.value
    const endDate = this.endDateInputTarget.value
    const days = this.#diffInDays(startDate, endDate)
    console.log(days)
    const totalValue = this.#totalValue(days)
    this.#setPriceValue(totalValue, days)
  }

  #setPriceValue(price, days) {
    this.priceHolderTarget.innerHTML = `<h4><em>Only <b style="color:#2d8cf0">${price} €</b> for <b style="color:#2d8cf0">${days} day(s)</b></em></h4>`
  }

  #diffInDays(startDate, endDate) {
    if (startDate && endDate) {
      const diffTime = (Date.parse(endDate) - Date.parse(startDate))
      console.log(diffTime)
      var days = Math.ceil(diffTime / (1000 * 60 * 60 * 24))
    } else {
      var days = 0
    }
    return days + 1
  }

  #totalValue(days) {
    return days * this.priceValue
  }

}
