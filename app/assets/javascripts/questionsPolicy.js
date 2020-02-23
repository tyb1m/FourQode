$(function(){

    $('#js-policy2-open').on('click',function(){
        $('#questionPolicy2Overlay').fadeIn();
        $('#questionPolicyOverlay').fadeOut();
        return false;
    });

    $('#js-policy-close').on('click',function(){
        $('#questionPolicy2Overlay').fadeOut();
        return false;
    });
});
