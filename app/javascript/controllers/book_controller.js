import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for the Book Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {

  async create_book(event) {
    event.preventDefault();
    event.stopPropagation();

    const form = event.currentTarget;
    await this.stimulate("Book#create", event.currentTarget);
    form.reset();
  }

  reset(event){
    event.preventDefault()
    Turbolinks.visit(location.href)
  }


  connect () {
    super.connect()
    this.create_book
    // add your code here, if applicable
  }


}
