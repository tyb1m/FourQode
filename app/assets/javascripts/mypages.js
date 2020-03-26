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

$(function(){
  $(document).on('click', '.icon', function(){
    $('.appContractorModal1').fadeIn();
    return false;
  });
});

$(function() {
  $(document).on('click', '.reviewtabs .left', function () {
    if ($('.right').hasClass('selected')) {
      console.log("Efectiveness");
      $('.right').removeClass('selected');
    }
    $(this).addClass('selected');
    $('#a_side').hide();
    $('#q_side').show();
  });
});

$(function() {
  $(document).on('click', '.reviewtabs .right', function () {
    if ($('.left').hasClass('selected')) {
      $('.left').removeClass('selected');
    }
    $(this).addClass('selected');
    $('#q_side').hide();
    $('#a_side').show();
  });
});

$(function() {
  var tabs = document.getElementById('tabs').getElementsByTagName('div');
  var pages = document.getElementById('body').getElementsByTagName('div');

  $(function changeTab () {
    $(document).on('click', '#tabs', function(){
      console.log($(document).find('selected'));
    })
    // var targetid = this.href.substring(this.href.indexOf('#') + 1, this.href.length);

    // for (var i = 0; i < pages.length; i++) {
    //   if (pages[i].id != targetid) {
    //     pages[i].style.display = "none";
    //   }
    //   else {
    //     pages[i].style.display = "block";
    //   }
    // }

    // for (var i = 0; i < tabs.length; i++) {
    //   tabs[i].onclick = changeTab;
    // }
  })
})