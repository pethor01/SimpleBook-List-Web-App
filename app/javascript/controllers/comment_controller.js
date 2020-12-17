import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for the Comment Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  
  onchange(event){
    const input_value = event.target.value
    
    if (input_value != " ") {
      document.getElementById("btn-comment").style.visibility = "visible";

    }
  }

  async create_comment(event) {
    event.preventDefault();
    event.stopPropagation();

    const form = event.currentTarget;
    await this.stimulate("Comment#create", event.currentTarget);
    form.reset();
  }

  connect () {
    super.connect()
    // add your code here, if applicable
  }


}
