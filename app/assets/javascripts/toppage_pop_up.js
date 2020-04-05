$(function(){
  $('.js_card_registration_open').on('click',function(){
      $('.js_card_registration_model').fadeIn();
      return false;
  });
  $('.js_card_registration_close').on('click',function(){
      $('.js_card_registration_model').fadeOut();
      return false;
  });
});

$(function(){
  $('.btn1').on('click', function(){
    $('.js_card_registration_model').fadeOut();
    return false;
  });
});

$(function(){
  $('.js_advice_open').on('click',function(){
      $('.js_advice_model').fadeIn();
      return false;
  });
  $('.js_advice_close').on('click',function(){
      $('.js_advice_model').fadeOut();
      return false;
  });
});

$(function(){
  $('.btn1').on('click', function(){
    $('.js_advice_model').fadeOut();
    return false;
  });
});

$(function(){
  $('.answer_submit').on('click',function(){
      $('.js_answer_model').fadeIn();
      return false;
  });
  $('.js_answer_close').on('click',function(){
      $('.js_answer_model').fadeOut();
      return false;
  });
});

$(function(){
  $('.btn1').on('click', function(){
    $('.js_answer_model').fadeOut();
    return false;
  });
});
