// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require react
//= require react_ujs
//= require components
//= require_tree .
var clicks = 0

$(document).ready(function(){
    $('.modal-trigger').leanModal();
  });

$(document).on("click","#close-but", function (e) {
  $('.section').removeClass('expand');
  $('.section').addClass('a');
  $('.section').css('height', 'auto');
  $('.modal-trigger').css('display', 'block')
  clicks = 0
});

$(document).ready(function ($) {
  $('body').css('background-color', 'rgba(100,100,100,1)')

  $('.section').click(function () {
    $(this).addClass('expand');
    $(this).removeClass('a');
    $(this).height(0.9 * $(window).height())
    $('.modal-trigger').css('display', 'none')
    clicks += 1
    var btn = $("<a class='waves-effect waves-light pink btn btn-floating center' id='close-but'><i class='large material-icons'>close</i></a>");
    if(clicks == 1){
      $(this).append(btn);
    }
  });

});
