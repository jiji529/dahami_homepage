<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta charset="UTF-8" />
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico" />
<title>다하미커뮤니케이션즈</title>
<meta name="description" content="뉴스저작권, 신문스크랩, 뉴스스크랩, 뉴스모니터링, 티페이퍼, 홍보관리, 방송뉴스, 미디어리포트" />
<meta name="keywords" content="다하미, 다하미커뮤니케이션즈, dahami, 스크랩">
<meta name="description" content="text" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/basic.css" />
<link rel="stylesheet" href="css/jquery.fullPage.css" />
<link rel="stylesheet" href="css/animate.css" />
<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo&amp;subset=korean" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery.fullPage.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/gnb.js"></script>
<script type="text/javascript">

/********************** 추석 **************************/

var winWidth = 370;
var winHeight = 307; 
var winURL = "/images/20170125.jpg"; 
var winName = "popup"; 
var winPosLeft = (screen.width - winWidth) / 2; 
var winPosTop = (screen.height - winHeight) / 2; 
var winOpt = "width="+winWidth+",height="+winHeight+",top="+winPosTop+",left="+winPosLeft; 
//window.open(winURL, winName, winOpt + "");
	
	function getCookie(name){    
		var wcname = name + '=';
		var wcstart, wcend, end;
		var i = 0;   
	
		  while(i <= document.cookie.length) {            
		   wcstart = i;  
		 wcend   = (i + wcname.length);            
		 if(document.cookie.substring(wcstart, wcend) == wcname) {                    
		  if((end = document.cookie.indexOf(';', wcend)) == -1)                           
		   end = document.cookie.length;                    
		  return document.cookie.substring(wcend, end);            
		   }           
	
		 i = document.cookie.indexOf('', i) + 1;            
		  
		   if(i == 0)                    
		  break;    
		  }    
		  return '';
	}
	
	function popup(){ // 오늘 하루동안 그만 보기 팝업
		var url = "/common/popup.html";
		window.open(url, "공지사항", "width=390, height=470, status=no, scrollbars=no, toolbar=no, menubar=no");
	}
	
	$(document).ready(function() {
		var today = new Date();
	    var holiday = new Date(2018, 8, 26); // 추석연휴 마지막날까지
	    
	    console.log(getCookie('popup') != 'start' && (today <= holiday));
	    
		if(getCookie('popup') != 'start' && (today <= holiday)) {       
			popup();
		}
	});
</script>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<div id="wrap" class="main">
    <div id="gnb">
        <jsp:include page="common/header.jsp"></jsp:include>
    </div>    
    <div id="fullpage">
        <div class="section" id="section0"> 
        	<a href="/company/company.html">   
	            <div class="item">
	                <div class="bg bg1"></div>
	                <div class="box_intro">
	                    <h2 class="title">What we do</h2>
	                    <div class="separator"></div>                    
	                    <p>다하미커뮤니케이션즈는 원하는 정보를 쉽고 빠르게 찾아드립니다.</p>
	                </div>
	            </div>
            </a>
        </div>
    	<div class="section" id="section1">
    		<a href="/service/scrapmaster.html">
	            <div class="item">
	                <div class="bg bg2"></div>
	                <div class="box_intro">
	                    <h2 class="title">What we deliver</h2>
	                    <div class="separator"></div>
	                    <p>정보를 소비하는 새로운 방식을 제공해 고객의 비즈니스에 가치를 더합니다.</p>
	                </div>
	            </div>
            </a>
        </div>
        <div class="section" id="section2">
        	<a href="/recruit/recruit.html">
	            <div class="item">
	                <div class="bg bg3"></div>
	                <div class="box_intro">
	                    <h2 class="title">What we promise</h2>
	                    <div class="separator"></div>
	                    <p>고객 만족과 신뢰를 위해 최선을 다해 정도를 지킵니다.</p>
	                </div>
	            </div> 
            </a>
        </div>
    </div>
    <div id="bottom">
        <jsp:include page="common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>