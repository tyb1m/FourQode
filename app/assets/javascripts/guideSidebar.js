// $(function() {
//     $('.startSideBarsListLink').click(function(){
//         $('.startSideBarsSub').toggleClass();
//     });
// });

$(function() {
    $('.startNavList').on('click', function() {
        $('.startSideBarsListLink').toggleClass('is-active');
    });
});
