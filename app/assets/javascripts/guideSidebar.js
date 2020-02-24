$(function() {
  // turbolins対応
  $(document).on('click', 'li', function(){
    // iconのスタイルを取得
    var getStyle = $(this).find('.fa-angle-right').css('transform');
    if ( $(this).hasClass('firstGuide') ) {
      // 初めてガイド
      $('.SideBarSub_firstGuide').slideToggle();
    } else if ( $(this).hasClass('questionGuide') ) {
      // 質問に関して
      $('.SideBarSub_questions').slideToggle();
    } else if ( $(this).hasClass('solutionGuide') ) {
      // 解決に関して
      $('.SideBarSub_solution').slideToggle();
    } else if ( $(this).hasClass('coinGuide') ) {
      // サイト内コインに関して
      $('.SideBarSub_coin').slideToggle();
    } else if ( $(this).hasClass('registerGuide') ) {
      // 登録/ログイン/通知に関して
      $('.SideBarSub_register').slideToggle();
    } else if ($(this).hasClass('cancelGuide') ) {
      // キャンセル/返金に関して
      $('.SideBarSub_cancel').slideToggle();
    }

    // クリックしたliの子要素のiconを取得しスタイルの変更
    if ( getStyle == 'matrix(1, 0, 0, 1, 0, 0)' ) {
      $(this).find('.fa-angle-right').css({ "transform": "rotate(90deg)" });
    } else if ( getStyle == 'matrix(6.12323e-17, 1, -1, 6.12323e-17, 0, 0)' ) {
      $(this).find('.fa-angle-right').css({ "transform": "rotate(0deg)" });
    } else if ( getStyle == 'none') {
      $(this).find('.fa-angle-right').css({ "transform": "rotate(90deg)" });
    }
  });
});