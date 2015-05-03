// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function () {
  $('.js-fb-signout').click(function(event) {
    FB.logout();
  });
});
