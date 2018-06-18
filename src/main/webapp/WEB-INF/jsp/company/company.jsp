<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>다하미커뮤니케이션즈</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<style type="text/css">
	.parallax-window {
	    min-height: 400px;
	    background: transparent;
	}
	
	div.sub_navi { 
		 height: 50px; 
		 position: absolute; 
		 left: 0; 
		 top: 270px; 
		 width: 100%; 
	} 
	div.fixed { 
	 position: fixed; 
	 top: 0; 
	 left: 0; 
	}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/parallax.js"></script>
<script type="text/javascript">
	$(document).ready(function (){
		$('.gnb_menu .menu:eq(0) .gnb_dl dt').addClass('on');
		
		$(window).bind('scroll', function() {
		 if ($(window).scrollTop() > 250) { 
			 $('.sub_navi').addClass('fixed');
		 } 
		 else { 
			 $('.sub_navi').removeClass('fixed');
		 }
		 
		 if ($(window).scrollTop() > 490 && $(window).scrollTop() < 1960) {
			 $(".sub_navi_li > li").removeClass();
			 $(".sub_navi_li > li:eq(0)").addClass("on");
		 }else if($(window).scrollTop() > 1960 && $(window).scrollTop() < 2420) { 
			 $(".sub_navi_li > li").removeClass();
			 $(".sub_navi_li > li:eq(1)").addClass("on");
		 }else if($(window).scrollTop() > 2420 && $(window).scrollTop() < 2800) { 
			 $(".sub_navi_li > li").removeClass();
			 $(".sub_navi_li > li:eq(2)").addClass("on");
		 }
		 
		});

		var loc = $(location).attr('search');
		
		if(loc != ""){
			loc = loc.replace("?loc=","");
			
			if(loc == "intro"){
				$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(0)").addClass("on");
				$('html, body').animate({
			        scrollTop: $(".intro_box1 .inner").offset().top
			    }, 1000);
	    	}else if(loc == "history"){
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(1)").addClass("on");
	    		$('html, body').animate({
			        scrollTop: $("#history .inner").offset().top
			    }, 1500);
	    	}else if(loc == "map"){
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(2)").addClass("on");
	    		$('html, body').animate({
			        scrollTop: $(".maps").offset().top
			    }, 1500);
	    	}else{
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(1)").addClass("on");
	    		$('html, body').animate({
			        scrollTop: $("intro").offset().top
			    }, 1000);
	    	}
		}else{
			$('html, body').animate({}, 1000);
		}
		
		
		
		$('.sub_navi_li > li').on('click', function(e) {
			var aTag = $('a', this).attr('href');
			
			if(aTag == "#intro"){
				$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(0)").addClass("on");
				$('html, body').animate({
			        scrollTop: $(".intro_box1 .inner").offset().top
			    }, 1000);
	    	}else if(aTag == "#history"){
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(1)").addClass("on");
	    		$('html, body').animate({
			        scrollTop: $("#history .inner").offset().top
			    }, 1500);
	    	}else if(aTag == "#map"){
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(2)").addClass("on");
	    		$('html, body').animate({
			        scrollTop: $(".maps").offset().top
			    }, 1500);
	    	}else{
	    		$('html, body').animate({
			        scrollTop: $("#intro").offset().top
			    }, 1000);
	    	}
		});
	});
</script>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<div id="wrap">
    <div id="gnb">
        <h1><a href="/index.html">logo</a></h1>
        <div id="gnb">
	        <jsp:include page="../common/header.jsp"></jsp:include>
	    </div>
    </div>
    <div class="contents">
        <div class="sub_top sub_img1">
            <h2>회사소개</h2>
            <p>다하미커뮤니케이션즈를 소개합니다.</p>
        </div>
        <div class="sub_navi">
            <ul class="sub_navi_li">
                <li class="on"><a href="#intro">다하미소개</a></li>
                <li><a href="#history">연혁</a></li>
                <li><a href="#map">오시는 길</a></li>
            </ul>
        </div>
        <div id="intros">
            <div class="intro_top parallax-window" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/images/company/company_intro.png">
                <h2>다하미커뮤니케이션즈는 참신한 아이디어와 기술혁신을 통해<br>디지털미디어 콘텐츠 분야의 리딩 컴퍼니로서의 역할을 다하고자 합니다.
</h2>
            </div>
            <div class="intro_box1">
                <div class="inner">
                	<h3>다하미소개</h3>
                    <p>디지털미디어 콘텐츠 서비스의 HUB를 지향하며</p>
                </div>
                <p align="center">   
                	<iframe width="800" height="533" src="https://www.youtube.com/embed/vRsUcoi6PJ8?rel=0&loop=1" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                </p>         
                <div class="box_line"></div>
             <!--   <h5>Our Company</h5> -->
                                <p>다하미커뮤니케이션즈는 1998년 창업 이래 신문, 방송, 잡지, 인터넷 기사, 보도 사진 등 미디어 서비스 분야의 혁신을 지속하고 있는 IT기업입니다.
<br>
기존의 틀에 안주하지 않고 변화와 혁신을 통해 최고의 가치를 추구하며, 미디어 서비스 플랫폼 개발을 포함한 다양한 고객중심 서비스를 제공합니다.
<br>
수많은 정보 속에서 고객에게 유용한 정보를 좀더 쉽고, 신속, 정확하게 전달하고자 합니다.
</p>

            </div>
            <div class="intro_box2 parallax-window" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/images/company/company_img1.png"></div>
            <div class="intro_box3">
                <div class="box_line"></div>
                <!--<h5>Our Customer</h5> -->
                <p>다하미커뮤니케이션즈는 고객과의 인연을 소중히 여기며 고객만족과 신뢰를 위해 정도를 지켜가겠습니다.<br>
국내 대다수 언론사와 정부부처 및 지방자치단체, 공기업/공공기관은 물론 유수의 대기업 및 중견기업 등 1,000여 고객사와 함께하고 있습니다.<br>
이제 다하미커뮤니케이션즈의 고객은 뉴스를 모니터링하는 홍보부서를 넘어 디지털미디어 콘텐츠를 활용하고자 하는 다양한 분야의 고객 층으로 확대되고 있습니다.
</p>
            </div>
            <div class="intro_box4"><div class="ceo">
                          <!--  <div class="box_line"></div> <h5>Our Message</h5> -->
                <p>고객의 환한 웃음을 지상의 과제로 알고<br>
                    열정과 패기,<br>
                    그리고 책임감과 도전 정신을 바탕으로<br>
                    항상 새로운 가치의 서비스를 추구해 나가겠습니다.<br><br><span>대표이사 박용립</span></p>
                
            </div></div>
        </div>
        <div id="history">
            <div class="inner">
                <h3>연혁</h3>
                <p>다하미커뮤니케이션즈는 뉴스 콘텐츠 시장 확대를 위해 노력해 왔습니다.</p>
                <div class="history">
                <div class="history_box">
                    <div class="history_tit">
                        <h4>도입기</h4>
                        <div class="box_line line3"></div>
                        <p>1998 ~ 2003</p>
                    </div>
                    <ul>
                        <li>
                            <div class="year">2003</div>
                            <div class="cont">스크랩마스터 개발</div>
                        </li>
                        <li>
                            <div class="year">2002</div>
                            <div class="cont">멀티 키오스크 시스템 개발</div>
                        </li>
                        <li>
                            <div class="year">2001</div>
                            <div class="cont">3D 웹 브라우저 개발</div>
                        </li>
                        <li>
                            <div class="year">2000</div>
                            <div class="cont">벤처기업 인증 획득</div>
                        </li>
                        <li>
                            <div class="year">1998</div>
                            <div class="cont">회사 창립</div>
                        </li>
                    </ul>
                </div>
                <div class="history_box">
                    <div class="history_tit">
                        <h4>성장기</h4>
                        <div class="box_line line2"></div>
                        <p>2004 ~ 2011</p>
                    </div>
                    <ul>
                        <li>
                            <div class="year">2011</div>
                            <div class="cont">모바일 스크랩마스터 출시</div>
                        </li>
                        <li>
                            <div class="year">2009</div>
                            <div class="cont">터치형 T-Paper 런칭</div>
                        </li>
                        <li>
                            <div class="year">2008</div>
                            <div class="cont">스크랩마스터 프리미엄 개발</div>
                        </li>
                        <li>
                            <div class="year">2007</div>
                            <div class="cont">중소기업청 INNO-BIZ 선정</div>
                        </li>
                        <li>
                            <div class="year">2007</div>
                            <div class="cont">T-Paper 시스템 개발</div>
                        </li>
                        <li>
                            <div class="year">2005</div>
                            <div class="cont">신문활용교육(NIE) 서비스 시작</div>
                        </li>
                        <li>
                            <div class="year">2004</div>
                            <div class="cont">스크랩마스터 런칭</div>
                        </li>
                    </ul>
                </div>
                <div class="history_box">
                    <div class="history_tit">
                        <h4>혁신기</h4>
                        <div class="box_line line1"></div>
                        <p>2012 ~ 현재</p>
                    </div>
                    <ul>
                        <li>
                            <div class="year">2016</div>
                            <div class="cont">스크랩마스터 GS인증 획득</div>
                        </li>
                        <li>
                            <div class="year">2016</div>
                            <div class="cont">뉴스뱅크 서비스 사업 양수</div>
                        </li>
                        <li>
                            <div class="year">2015</div>
                            <div class="cont">중앙일보 시사매거진 서비스 출시</div>
                        </li>
                        <li>
                            <div class="year">2014</div>
                            <div class="cont">디지털초판 서비스 출시</div>
                        </li>
                        <li>
                            <div class="year">2013</div>
                            <div class="cont">클리핑온 출시</div>
                        </li>
                        <li>
                            <div class="year">2013</div>
                            <div class="cont">한국언론진흥재단 e-NIE 개발</div>
                        </li>
                        <li>
                            <div class="year">2012</div>
                            <div class="cont">T-Paper GS인증 획득</div>
                        </li>
                    </ul>
                </div>
                </div>
            </div>
        </div>
        <div class="maps parallax-window" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/images/company/map.png"><div class="map">
            <h2>오시는 길</h2>
            <p>서울시 중구 마른내로 140, 5층 (쌍림동, 인쇄정보센터)<br>
                02 - 593 - 4174<br>
                <br>
                지하철 5호선 동대문역사문화공원역 6번 출구</p>
            <a href="http://place.map.daum.net/8774337" target="_blank">지도 보기</a></div>
    </div></div>
    <div id="bottom">
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
