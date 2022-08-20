import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-reset"
export default class extends Controller {
  connect() {
  }

  reset() {
    this.element.reset()
  }
}
