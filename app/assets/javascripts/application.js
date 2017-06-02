// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$('.add-to-cart').bind('click', function () {
        $('#toggle-highlight').addClass('highlight');
        setTimeout(function () {
            $('#toggle-highlight').removeClass('highlight');
        }, 3000);
  });
