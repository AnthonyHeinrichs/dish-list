import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input"];

  connect() {
    console.log('connected')
    // console.log(this.listTarget)
    // console.log(this.formTarget)
    console.log(this.inputTarget)


  }
  fetchCountry(event) {
    const country = this.inputTarget.options[this.inputTarget.selectedIndex].text
    const url = `/dishes?query=${country}&commit=form`
    fetch(url, { headers: { "Accept": "text/plain" } })
      .then(response => response.text())
      .then((data) => {
        // this.listTarget.outerHTML = data
        console.log(data);
      })
  }
};
