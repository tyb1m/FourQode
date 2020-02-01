$(function(){
    $('#js-policy-open').on('click',function(){
        $('#questionPolicyOverlay').fadeIn();
        return false;
    });

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

