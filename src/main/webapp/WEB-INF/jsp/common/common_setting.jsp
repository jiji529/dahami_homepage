<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	

    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css?v=20240911">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/modal.css?v=20240911">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css?v=20240911">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/kakao.js?v=20240911"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js?v=20240911"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>	
		function getContextPath() {
			var lastPath = "/" + window.location.pathname.split('/')[window.location.pathname.split('/').length-1];
			var contextPath = "";
			if(lastPath=='/') {
				contextPath = window.location.pathname + 'index.html';
			} else {
				contextPath = window.location.pathname;
			}
			return contextPath;
		}
	
		function languageChange(language) {			
			var contextPath = getContextPath();
			
			if(language=='KR') {
				if(contextPath.indexOf("EN.html")!=-1) {					
					location.href = contextPath.replace(/EN.html/gi, ".html");
				} else {
					location.href = contextPath;					
				}
			} else if(language=='EN') {
				if(contextPath.indexOf("EN.html")!=-1) {
					location.href = contextPath;
				} else {
					location.href = contextPath.replace(/.html/gi, "EN.html");					
				}
			}
		}
		
		function popup(startDate, endDate, imgWidth, imgHeight) { // 오늘 하루동안 그만 보기 팝업
		    var url = '<%=request.getContextPath()%>/common/popup.html';
		    var arg = 'width=' + imgWidth + 'px, height=' + (imgHeight+34) + 'px, status=no, scrollbars=no, toolbar=no, menubar=no';
		    var today = new Date();
		    var startDay = new Date(startDate.replace(/-/g, "/") + ' 00:00:00');
		    var endDay = new Date(endDate.replace(/-/g, "/") + ' 23:59:59');
		    if ((getCookie('popup') != 'start') && (today >= startDay) && (today <= endDay)) {
		        window.open(url, '', arg);
		    }
		}
		
		function getCookie(name) {
		    var wcname = name + '=', wcstart, wcend, end, i = 0;
		    while (i <= document.cookie.length) {
		        wcstart = i;
		        wcend = (i + wcname.length);
		        if (document.cookie.substring(wcstart, wcend) == wcname) {
		            if((end = document.cookie.indexOf(';', wcend)) == -1)
		            end = document.cookie.length;
		            return document.cookie.substring(wcend, end);
		        }
		        i = document.cookie.indexOf('', i) + 1;
		        if (i == 0) break;
		    }
		    return '';
		}
		
		// 240911 배너 팝업 하루 그만보기 기능 추가
		function setBannerCookie(name, value, expiredays) {
			var today = new Date();
		    today.setDate(today.getDate() + expiredays);
		
		    document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
		}
		
		function closeBannerPop() {
			setBannerCookie('banner', 'start', 1);			
			$('.bn-wrap').css('display','none');
		}
		
		function BannerCheck() { // 오늘 하루동안 그만 보기 팝업
		    if ((getCookie('banner') != 'start')) {
		        $('.bn-wrap').css('display','block');
		    } else {
				$('.bn-wrap').css('display','none');
		    }
		}
		
		window.addEventListener('resize', function() {
			if(window.innerWidth < 768) {
				$('.bn-wrap').css('display','none');
			} else {
				$('.bn-wrap').css('display','block');
			}
		});
		
		$(document).ready(function() {						
			// 팝업설정
			if(getContextPath().indexOf("index.html")!=-1 
			|| getContextPath().indexOf("indexEN.html")!=-1) {
	        	popup('2024-09-11', // 'YYYY-MM-DD' : startDate
	                  '2024-09-18', // 'YYYY-MM-DD': endDate
	                  400, // n : imgWidth
	                  400 // n : imgHeight
	            );				
			}
			// 배너설정
			BannerCheck();
		})
	</script>