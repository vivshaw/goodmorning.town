import { Controller } from "stimulus";

export default class ClipboardController extends Controller {
  static targets = ["source"];

  /* Copy a Greeting to the clipboard */
  async copy() {
    // Only execute if navigator.clipboard is available
    if (navigator?.clipboard) {
      const text = this.sourceTarget.innerText;

      try {
        await navigator.clipboard.writeText(text);
      } catch (err) {
        console.error("Failed to copy!", err);
      }
    }
  }
}
