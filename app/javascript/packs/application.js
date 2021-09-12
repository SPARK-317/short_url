// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", (event) => {

  document.querySelector("#new_long").addEventListener("ajax:complete", (event) => {
    // console.log(event.detail[0].response);
    const response = event.detail[0].response;
    document.querySelector("#result").innerText = response;
  });

});