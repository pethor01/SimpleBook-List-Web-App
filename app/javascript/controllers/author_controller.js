import Turbolinks from 'turbolinks'
import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for the Author Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  /*
   * Regular Stimulus lifecycle methods
   * Learn more at: https://stimulusjs.org/reference/lifecycle-callbacks
   *
   * If you intend to use this controller as a regular stimulus controller as well,
   * make sure any Stimulus lifecycle methods overridden in ApplicationController call super.
   *
   * Important:
   * By default, StimulusReflex overrides the -connect- method so make sure you
   * call super if you intend to do anything else when this controller connects.
  */
  async create(event) {
    event.preventDefault();
    event.stopPropagation();

    const form = event.currentTarget;

    await this.stimulate("Author#create", event.currentTarget);
    form.reset();
  }

  reset(event){
    event.preventDefault()
    Turbolinks.visit(location.href)
  }

  connect () {
    super.connect()
    this.create
    // add your code here, if applicable
  }


}
