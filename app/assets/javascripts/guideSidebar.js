$(function() {
    $('.firstGuide').click(function(){
        $('.SideBarSub_firstGuide').slideDown();
        $('#fa-firstGuide').css({
          "transform" : "rotate(90deg)"
        });
    });
});

$(function() {
    $('.questionGuide').click(function(){
        $('.SideBarSub_questions').slideDown();
        $('#fa-questions').css({
          "transform" : "rotate(90deg)"
        });
    });
});

$(function() {
    $('.solutionGuide').click(function(){
        $('.SideBarSub_solution').slideDown();
        $('#fa-solution').css({
          "transform" : "rotate(90deg)"
        });
    });
});

$(function() {
    $('.coinGuide').click(function(){
        $('.SideBarSub_coin').slideDown();
        $('#fa-coin').css({
          "transform" : "rotate(90deg)"
        });
    });
});

$(function() {
    $('.registerGuide').click(function(){
        $('.SideBarSub_register').slideDown();
        $('#fa-register').css({
          "transform" : "rotate(90deg)"
        });
    });
});

$(function() {
    $('.cancelGuide').click(function(){
        $('.SideBarSub_cancel').slideDown();
        $('#fa-cancel').css({
          "transform" : "rotate(90deg)"
        });
    });
});
