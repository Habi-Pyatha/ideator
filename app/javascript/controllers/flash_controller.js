import {Controller} from '@hotwired/stimulus';

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    setTimeout(() => {
      console.log("Flash controller connected");
      document.querySelectorAll('.flash').forEach((element) => {
        element.outerHTML = '';
      });
    }, 5000);
  }

  dismiss(event) {
    event.target.closest('.flash').outerHTML = '';
  }
}