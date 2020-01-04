/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels").start()
require('datatables.net-bs4')();

//console.log('Hello World from Webpacker')
import "core-js/stable";
import "regenerator-runtime/runtime";
import "bootstrap";
import "../stylesheets/application";
import "./custom";


//datatables.net
$(document).ready( function () {
    $('#table_id').DataTable();
} );
//select2
$(document).ready(function(){
  // Turn on js-selectable class so that it becomes SELCT 2 tag
  $('.js-searchable').select2({
    // If you are using Bootstrap, please add　`theme: "bootstrap"` too.
    theme: "bootstrap"
  });
});
$(".js-example-matcher-start").select2({
  matcher: matchStart,
  theme: "bootstrap"
});