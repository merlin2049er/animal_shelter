// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import $ from 'jquery';
global.$ = $;
global.jQuery = $;
require("./bootstrap.js")
require("./custom.js")

require("./rails.validations.js")
require("./rails.validations.simple_form.bootstrap4.js")
require("./rails.validations.simple_form.js")


require("./lightbox.js")
require("./cocoon.js")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

require("trix")
require("@rails/actiontext")

require("./featherlight.min.js")
require("./featherlight.gallery.min.js")




import toastr from 'toastr';

toastr.options = {
    "closeButton": true
    // .... add options here ...
};

global.toastr = toastr;

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
const images = require.context('../img', true)
const imagePath = (name) => images(name, true)

$( document ).on('turbolinks:load', () => {
  console.log("It works on each visit!")
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

import "../stylesheets/application.css";
// Support component names relative to this directory:
//var componentRequireContext = require.context("components", true);
//var ReactRailsUJS = require("react_ujs");
//ReactRailsUJS.useContext(componentRequireContext);
