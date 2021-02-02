import { Controller } from "stimulus";

/* Controller for streamed Greeting elements via Turbo Streams.
 * We only want to display 10 recent greetings.
 * So, each time we add a new element, it must delete one of the existing ones.
 * But this must only happen for elements streamed in via Turbo and not those from initial page load!
 */
export default class extends Controller {
  connect() {
    console.log("connecting stream element");

    /* We use this neat little trick to access the Greeting controller:
     * https://dev.to/leastbad/the-best-one-line-stimulus-power-move-2o90
     */
    document.querySelector("#app").greeting.onAddGreeting();
  }
}
