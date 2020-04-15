import { Controller } from 'stimulus';
import consumer from '/channels/consumer'

export default class extends Controller {
  static targets = ['progress_bar']
  initialize() {
    console.log("hello from progress bar controller")
    consumer.subscriptions.create({channel: "ProgressChannel", id: this.progress_bar_id()}, {
      received(data) {
        alert(data)
      }
    })
  }

  progress_bar_id() {
    return this.progress_barTarget.getAttribute('id')
  }
}