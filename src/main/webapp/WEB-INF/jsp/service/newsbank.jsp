<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<meta name="description" content="뉴스저작권, 신문스크랩, 뉴스스크랩, 뉴스모니터링, 티페이퍼, 홍보관리, 방송뉴스, 미디어리포트" />
<title>다하미커뮤니케이션즈</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery.bxslider.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>
<jsp:include page="../common/google_analytics.jsp"></jsp:include>
<script type="text/javascript">
	$(document).ready(function(){
	 slider = $('.bxslider').bxSlider({
		 pagerCustom: '#bx-pager',
		 controls: false,
		 auto: true
	 });
	 
	});
</script>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<div id="wrap">
    <div id="gnb">
        <jsp:include page="../common/header.jsp"></jsp:include>
    </div>
    <div class="contents">
        <div class="sub_top sub_img2">
            <h2>서비스소개</h2>
            <p>다하미커뮤니케이션즈의 뉴스 콘텐츠 통합 이용 서비스를 소개합니다.</p>
        </div>
        <div class="sub_navi">
            <ul class="sub_navi_li sub_sev_li">
                <li><a href="/service/scrapmaster.html">스크랩마스터</a></li>
                <li><a href="/service/clipping.html">클리핑온</a></li>
                <li><a href="/service/tpaper.html">티페이퍼</a></li>
                <li class="on"><a href="/service/newsbank.html">뉴스뱅크</a></li>
                <li><a href="/service/enie.html">e-NIE</a></li>
                <li><a href="/service/newsplaza.html">뉴스플라자</a></li>
                <li><a href="/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
        <div id="sub_cont">
            <div class="nb_title">
                <div class="serv_tit">
                    <p>언론사 <b>보도사진 통합 라이브러리</b></p>
                    <h3>뉴스뱅크</h3>
                </div>
                <div class="laptop">
                    <div class="overflow">
                        <ul class="bxslider">
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_nb1.png" /></li>
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_nb2.png" /></li>
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_nb3.png" /></li>
                        </ul>
                    </div>
                    <div id="bx-pager">
                        <ul>
                            <li> <a data-slide-index="0" href="">1</a> </li>
                            <li> <a data-slide-index="1" href="">2</a> </li>
                            <li> <a data-slide-index="2" href="">3</a> </li>
                        </ul>
                    </div>
                </div>
                <div class="serv_txt">
                    <p>뉴스뱅크는 23개 언론사의 보도사진 650만 컷 이상을 보유하고 있는 국내 최대의 보도사진 통합 라이브러리입니다.<br>
                        <br>
                        신미양요, 병인양요의 19세기 사진을 비롯해 일제 강점기를 지나 6.25 전쟁을 거치고<br>
                        산업화와 민주화 시대를 거쳐 오늘에 이르기까지<br>
                        대한민국 근현대사의 중요 장면이 생생한 보도사진으로 기록되어 남아 있습니다. </p>
                    <a href="http://www.newsbank.co.kr" target="_blank">뉴스뱅크 홈페이지 바로가기</a> </div>
            </div>
            <div class="sub_box nb1">
                <div class="text_box tbr">
                    <h3>데일리 업데이트</h3>
                    <p>1일 평균 1천 6백컷, <br>
                        월평균 3만컷 이상의 이미지가 <br>
                        정기적으로 업로드 됩니다. </p>
                </div>
            </div>
            <div class="sub_box nb2">
                <div class="text_box tbl">
                    <h3>간편한 구매</h3>
                    <p>온라인 게시물, 오프라인 인쇄물 및 행사 활용 등 <br>다양한 용도별 가격을 한 눈에 확인할 수 있습니다.<br>
                        원하는 결제 수단으로 <br>간편하게 사진을 구매할 수 있습니다.</p>
                </div>
            </div>
            <div class="sub_box nb3">
                <div class="text_box tbr">
                    <h3>공정한 저작권 거래</h3>
                    <p>국가표준식별체계(UCI) 등록기관으로서<br>저작물에 코드를 부여해<br>콘텐츠의 저작권 보호를 위해 힘쓰고 있습니다.<br>판매 내역은 매월 저작권자에게 리포트하고 있습니다.</p>
                </div>
            </div>
        </div>
    </div>
    <div id="bottom">
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>