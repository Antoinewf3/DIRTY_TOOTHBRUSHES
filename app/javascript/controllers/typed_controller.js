import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {

  connect() {
    const options = { strings: ["Wanna try a new experience..."], typeSpeed: 60, showCursor: false }
    new Typed(this.element, options)
  }
}
