// JavaScript Document


    var backImgSeq = 0;
    var backImgInter = 0;

	$(document).ready(function() {
		$(".contents").css('height', $(window).height());

        $('#fullpage').fullpage({
            sectionsColor: ['#000', '#000', '#000']
        });
        firstCss();
        backImgInter = setInterval(explode, 4500);
	});
    
	function explode(){
        if(backImgSeq == 0){
            $('#fp-nav li:eq(1) a').click();
            animationCss2();
        }else if (backImgSeq == 1){
            $('#fp-nav li:eq(2) a').click();
            animationCss3();
        }else{
            clearInterval(backImgInter);
        }
        backImgSeq = backImgSeq+1;
    }
	 function confLayout(){
        var height = Math.min(document.documentElement.offsetHeight, document.body.offsetHeight);
		$(".contents").css('height', height -150 );
  	}
    function firstCss(){
    	animationCss1();
    }
    function animationCss1(){
    	$('.bg2').removeAttr("style");
    	$('.bg3').removeAttr("style");
    	$('.bg1').css('-webkit-transform', 'scale(1.05)').css({"opacity" : 0.4})
        .css('-ms-transform', 'scale(1.05)').css({"opacity" : 0.4})
        .css('-moz-transform', 'scale(1.05)').css({"opacity" : 0.4})
        .css('-o-transform', 'scale(1.05)').css({"opacity" : 0.4});
    	$('#section0 .title').addClass('animated slideInRight');
    	$('#section1 .title').removeClass('animated slideInRight');
    	$('#section2 .title').removeClass('animated slideInRight');
    }
    
    function animationCss2(){
    	$('.bg1').removeAttr("style");
    	$('.bg3').removeAttr("style");
        $('.bg2').css('-webkit-transform', 'scale(1.05)').css({"opacity" : 0.6})
                .css('-ms-transform', 'scale(1.05)').css({"opacity" : 0.6})
                .css('-moz-transform', 'scale(1.05)').css({"opacity" : 0.6})
                .css('-o-transform', 'scale(1.05)').css({"opacity" : 0.6});
        $('#section1 .title').addClass('animated slideInRight');
        
        $('#section0 .title').removeClass('animated slideInRight');
        $('#section2 .title').removeClass('animated slideInRight');
    }
    
    function animationCss3(){
    	$('.bg1').removeAttr("style");
    	$('.bg2').removeAttr("style");
        $('.bg3').css('-webkit-transform', 'scale(1.05)').css({"opacity" : 0.6})
                .css('-ms-transform', 'scale(1.05)').css({"opacity" : 0.6})
                .css('-moz-transform', 'scale(1.05)').css({"opacity" : 0.6})
                .css('-o-transform', 'scale(1.05)').css({"opacity" : 0.6});
        $('#section2 .title').addClass('animated slideInRight');
        
        $('#section0 .title').removeClass('animated slideInRight');
        $('#section1 .title').removeClass('animated slideInRight');
    }
