$(function () {
  var winScrollTop;
  $('#modal.app1').each(function () {
    $(this).on('click', function () {
      //スクロール位置を取得
      winScrollTop = $(window).scrollTop();
      var target = $(this).data('target');
      var modal = document.getElementById(target);
      $(modal).fadeIn();
      return false;
    });
  });
  $('.js-modal-close').on('click', function () {
    $('.js-modal').fadeOut();
    $('body,html').stop().animate({ scrollTop: winScrollTop }, 100);
    return false;
  });
});

$(function() {
  $(document).on('click', '.notice', function() {
    $(this).find('.showDown').toggle();
    $(this).find('.noticeContent').slideToggle();
  });
});
