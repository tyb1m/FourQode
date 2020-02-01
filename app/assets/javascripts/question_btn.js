$(document).ready(function(){
    $(window).on("scroll", function() {
        scrollHeight = $(document).height();
        scrollPosition = $(window).height() + $(window).scrollTop();
        footHeight = $("footer").innerHeight();
        if ( scrollHeight - scrollPosition  <= footHeight ) {
            $(".question_btn_detail").css({
                "position":"absolute",
                "bottom": "20px"
            });
        } else {
            $(".question_btn_detail").css({
                "position":"fixed",
                "bottom": "20px"
            });
        }
    });
});