import { Application } from "@hotwired/stimulus";

// TODO: Import the Stimulus Controller here
import copyToClipboardController from "./controllers/copy_to_clipboard_controller.js";

window.Stimulus = Application.start();
// TODO: Register your Stimulus Controller below h
window.Stimulus.register("copy-to-clipboard", copyToClipboardController);
