//= require jquery
//= require tether
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require bootstrap


window.addEventListener("scroll", function(e) {
  e.preventDefault()

  if($(window).scrollTop() + $(window).height() == $(document).height()) {
    Turbolinks.visit('/users?page=2');
  }
});