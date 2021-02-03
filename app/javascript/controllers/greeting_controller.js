import { Controller } from "stimulus";

/* Controller for a single Greeting.
 * We only want to display 10 recent greetings.
 * So, each time we add a new element, we need to call into the GreetingsList
 * to trim the greetings.
 */
export default class Greeting extends Controller {
  connect() {
    /* We use this neat little trick to access the Greeting controller:
     * https://dev.to/leastbad/the-best-one-line-stimulus-power-move-2o90
     * We do this so the Greetings controller can trim down the greetings
     * list to the right number of elements.
     */
    document.querySelector("#greetings").greetingsList.trimGreetingsToMax();
  }
}
