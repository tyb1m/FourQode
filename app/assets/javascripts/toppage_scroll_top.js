$(function() {
  //スクロールしてトップ
  $('.toppage_index_pageup').click(function () {
      $('body,html').animate({
          scrollTop: 0
      }, 500);
      return false;
  });
});