import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["form", "input", "list"];

  update(event) {
    event.preventDefault()
    console.log(this.inputTarget.value)
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, { headers: { "Accept": "text/plain" } })
    .then(response => response.text())
    .then((data) => {
      this.listTarget.outerHTML = data
    })
  }
}
