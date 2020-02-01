$(function(){
    $('#js-appeal-open').on('click',function(){
        $('#appealMessageOverlay').fadeIn();
        return false;
    });

    $('#js-appeal-close').on('click',function(){
        $('#appealMessageOverlay').fadeOut();
        return false;
    });
});
