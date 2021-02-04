import { Controller } from "stimulus";

/* Controller for the list of recent Greetings.
 */
export default class GreetingsList extends Controller {
  maxGreetings = 10;

  /* If there are more than maxGreetings Greetings,
   * remove them until there are only maxGreetings.
   * Fires when a new Greeting is streamed via Turbo Streams.
   * Is called from the StreamElement controller.
   */
  trimGreetingsToMax() {
    while (this.element.children.length > this.maxGreetings) {
      /* Yeet that final Greeting */
      this.element.lastElementChild.remove();
    }
  }

  connect() {
    /* We use this neat little trick to make this controller accessible throughout the app:
     * https://dev.to/leastbad/the-best-one-line-stimulus-power-move-2o90
     */
    this.element[this.identifier] = this;
  }
}
