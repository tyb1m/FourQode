$(document).ready(function(){
  var py = window.pageYOffset + document.getElementById("serch_position").getBoundingClientRect().top;
  console.log(py);
  $(window).on("scroll", function() {
    var scrollPosition = $(window).scrollTop();
    console.log(scrollPosition);
    if ( py - scrollPosition  > 50 ) {
      $("#serch_position").css({
        "position":"relative",
        "top": "0px"
      });
    } else {
      $("#serch_position").css({
        "position":"fixed",
        "top": "50px"
      });
    }
  });
});