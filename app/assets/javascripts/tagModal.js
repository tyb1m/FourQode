$(function() {
  $('#tag_modal_close, #tag_modal_overlay').on('click', function() {
    $('#tag_modal_overlay, #setting_tag_modal').fadeOut();
  });

  locateCenter();
  $(window).resize(locateCenter);

  // モーダルを中央表示させる関数
  function locateCenter() {
    let w = $(window).width();
    let h = $(window).height();

    let cw = $('#setting_tag_modal').outerWidth();
    let ch = $('#setting_tag_modal').outerHeight();

    $('#setting_tag_modal').css({
      'left': ((w - cw) / 2) + 'px',
      'top': ((h - ch) / 2) + 'px'
    });
  }
});