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
    this.priceHolderTarget.innerText = `${price} € for ${days} day(s)`
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
