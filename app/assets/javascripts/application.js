//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function(){ $(document).foundation();
  $("#start").on("click", function() {
  $(this).hide();
  $("div.letter").fadeIn(1000);
  });
 });
