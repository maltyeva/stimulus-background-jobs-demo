import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['progress_bar']
  initialize() {
    console.log("hello from progress bar controller")
  }
}