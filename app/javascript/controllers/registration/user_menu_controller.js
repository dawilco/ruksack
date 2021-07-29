import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    window.addEventListener("click", this.handleClosure);
  }

  toggle() {
    document.getElementById("user-menu").classList.toggle("hidden");
  }

  handleClosure(event) {
    const btn = document.getElementById("user-menu-button");
    const menu = document.getElementById("user-menu");
    if (!btn.contains(event.target)) {
      menu.classList.add("hidden");
    }
  }
}
