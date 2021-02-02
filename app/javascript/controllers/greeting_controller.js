import { Controller } from "stimulus";

/* Controller for the entire app.
 */
export default class extends Controller {
  static targets = ["createButton", "greetings"];

  /* Removes the final Greeting from the
   * Fires when a new Greeting is streamed via Turbo Streams.
   * Is called from the StreamElement controller.
   */
  onAddGreeting() {
    console.log("adding greeting");

    /* Yeet that final Greeting */
    this.greetingsTarget.lastElementChild.remove();
  }

  connect() {
    console.log("connecting greeting controller");

    /* We use this neat little trick to make this controller accessible throughout the app:
     * https://dev.to/leastbad/the-best-one-line-stimulus-power-move-2o90
     */
    this.element[this.identifier] = this;
  }
}
