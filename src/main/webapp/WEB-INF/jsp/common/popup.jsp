<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    	    	
<style>
*{margin:0; padding:0;}
html,body,form{width:400px; height:433px;}
label{font-size:14px; line-height:18px; cursor:pointer; color:#fff;}
input{margin:5px;position:relative;top:1px;}
div#body{height:calc(100% - 33px);}
div#body img{width:400px; height:400px;}
div#foot{background:#3A3E50;padding:5px 0;}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	function setCookie(name, value, expiredays) {
	var today = new Date();
	    today.setDate(today.getDate() + expiredays);
	
	    document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
	}
	
	function closePop() {
		if (document.getElementById('todayPop').checked) {
			setCookie('popup', 'start', 1);
		}
		self.close();
	}	
	
	$(document).ready(function() {
		  var onElements = window.opener.$('div.lang li.on').text();
		  if(onElements.indexOf('KR')!=-1) {	
			  document.title = '공지사항';
			  document.getElementById('todayPopLabel').innerHTML = '오늘 하루 그만보기';
		  } else if(onElements.indexOf('EN')!=-1) {
			  document.title = 'Notice';
			  document.getElementById('todayPopLabel').innerHTML = 'Prevent pop-up windows for the day';
		  }
		
	      // 팝업 창 크기를 HTML 크기에 맞추어 자동으로 크기를 조정하는 함수.
	      var strWidth;
	      var strHeight;

	      //innerWidth / innerHeight / outerWidth / outerHeight 지원 브라우저 
	      if ( window.innerWidth && window.innerHeight && window.outerWidth && window.outerHeight ) {
	          strWidth = $('body').outerWidth() + (window.outerWidth - window.innerWidth);
	          strHeight = $('body').outerHeight() + (window.outerHeight - window.innerHeight);
	      }
	      else {
	          var strDocumentWidth = $(document).outerWidth();
	          var strDocumentHeight = $(document).outerHeight();

	          window.resizeTo ( strDocumentWidth, strDocumentHeight );

	          var strMenuWidth = strDocumentWidth - $(window).width();
	          var strMenuHeight = strDocumentHeight - $(window).height();

	          strWidth = $('body').outerWidth() + strMenuWidth;
	          strHeight = $('body').outerHeight() + strMenuHeight;
	      }

	      //resize 
	      window.resizeTo( strWidth, strHeight );

	  });
</script>
</head>
<body style="overflow:hidden;">
	<form>
		<div id="body">
			<img src="<%=request.getContextPath()%>/images/popup.img" />
		</div>
		<div id="foot" onClick="closePop()">
			<input type="checkbox" id="todayPop">
			<label id="todayPopLabel" for="todayPop"></label>			
		</div>
	</form>
</body>
</html>