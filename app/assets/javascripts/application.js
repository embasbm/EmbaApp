//= require jquery
//= require tether
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require bootstrap


window.addEventListener("scroll", function(e) {
  e.preventDefault()

  if($(window).scrollTop() + $(window).height() == $(document).height()) {
    users = document.getElementById('userstable')
    currentPage = Number(users.dataset.currentPage)
    totalPages = Number(users.dataset.totalPages)
    if ( currentPage < totalPages) {
      Turbolinks.visit('/users?page=' + (currentPage + 1))
    }
  }
});
