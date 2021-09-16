$(document).ready(function() {
//  $(".contents").css('height', $(window).height() ); // ON TEST
  $('.m-open').click(function() {
    $('.m-open').css('display', 'none');
    $('.m-close').css('display', 'block');
    $('.gnb_menu, .scrapmaster, .callcenter').css('display', 'block');
  });
  $('.m-close').click(function() {
    $('.m-close').css('display', 'none');
    $('.m-open').css('display', 'block');
    $('.gnb_menu, .scrapmaster, .callcenter').css('display', 'none');
  });
  $('.m-close').trigger('click');
  $(window).trigger('resize');
});

function confLayout() { // ON TEST
//  var height = Math.min(document.documentElement.offsetHeight, document.body.offsetHeight);
//  $(".contents").css('height', height -146 );
}

var windowInnerHeightGnb = -1;
var windowInnerWidthGnb = -1;
var rtimeGnb;
var timeoutGnb = false;
var deltaGnb = 200;
$(window).resize(function() {
  if ($(window).width() > 1201) {
    $('.gnb_menu, .scrapmaster, .callcenter').css('display', 'block');
  }

  rtimeGnb = new Date();
  if (timeoutGnb === false) {
    timeoutGnb = true;
    setTimeout(resizeEndGnb, deltaGnb);
  }
});
function resizeEndGnb() {
  if (new Date() - rtimeGnb < deltaGnb) {
    setTimeout(resizeEndGnb, deltaGnb);
  } else {
    timeoutGnb = false;
    if (window.innerWidth > 1180) {
      $('.gnb_menu').on('mouseover', function() {
        $(".navi_layer, .navi_sub_ul").slideDown(200);
      });
      $('.navi_layer').on('mouseout', function() {
        $(".navi_layer, .navi_sub_ul").slideUp(200);
      });
      $('.navi_layer').trigger('mouseout');
    } else {
      $('.gnb_menu').off('mouseover');
      $('.navi_sub_ul').attr('style', '');
      if ($('.m-open').is(':visible')) {
        $('.m-close').trigger('click');
      } else {
        if ((window.innerHeight !== windowInnerHeightGnb) && (window.innerWidth === windowInnerWidthGnb)) {
        } else {
          $('.m-close').trigger('click');
        }
      }
    }
    windowInnerHeightGnb = window.innerHeight;
    windowInnerWidthGnb = window.innerWidth;
  }
}
