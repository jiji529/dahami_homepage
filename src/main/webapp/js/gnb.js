// JavaScript Document

	$(document).ready(function() {
		$(".contents").css('height', $(window).height() );
	});
	
	 function confLayout(){
    		var height = Math.min(document.documentElement.offsetHeight, document.body.offsetHeight); 
		
		$(".contents").css('height', height -146 );
  	}
$(document).ready(function () {
         $(".gnb_menu").show();
           $(".navi_layer").hide();
        
	$(document).on("mouseover",".gnb_menu", function(){
		$(".navi_layer, .navi_sub_ul").slideDown(200);			    
	});
	
	$(document).on("mouseout",".navi_layer", function(){
		$(".navi_layer, .navi_sub_ul").slideUp(200);
	});
    }); 
