import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["form", "input", "list", "img"];

  connect() {
    console.log('connected')
    console.log(this.listTarget)
    console.log(this.formTarget)
    console.log(this.inputTarget)


  }
  update(event) {
    event.preventDefault()
    console.log(this.inputTarget.value)
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, { headers: { "Accept": "text/plain" } })
    .then(response => response.text())
    .then((data) => {
      this.listTarget.outerHTML = data

      console.log(this.inputTarget.value)
      if(this.inputTarget.value === 'pizza') {
        this.imgTarget.attributes.src.value = '/assets/pizza_400.png'
      } else if (this.inputTarget.value === 'burger') {
        this.imgTarget.attributes.src.value = '/assets/burger_400.png'
      } else if (this.inputTarget.value === 'bretzel') {
        this.imgTarget.attributes.src.value = '/assets/bretzel_400.png'
      } else if (this.inputTarget.value === 'ramen') {
        this.imgTarget.attributes.src.value = '/assets/ramen_200.png'
      }
    })
  }
}
