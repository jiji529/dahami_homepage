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
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
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
                <li><a href="/service/newsbank.html">뉴스뱅크</a></li>
                <li><a href="/service/enie.html">e-NIE</a></li>
                <li class="on"><a href="/service/newsplaza.html">뉴스플라자</a></li>
                <li><a href="/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
        <div id="sub_cont">
            <div class="np_title">
                <div class="serv_tit">
                    <p>온라인 뉴스 원문 통합이용 서비스</p>
                    <h3>뉴스플라자</h3>
                </div>
                <div class="laptop">
                    <div class="overflow">
                        <ul class="bxslider">
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_np1.png" /></li>
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_np2.png" /></li>
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_np3.png" /></li>
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
                    <p>뉴스플라자는 한국언론진흥재단의 뉴스저작권 사업 중 하나로, 69개 언론사의 온라인 뉴스를 제공하고 있습니다.<br>
                        <br>
                        다하미커뮤니케이션즈는 한국언론진흥재단 뉴스플라자 사업의 온라인 뉴스 원문 저작권 판매의 공식 대행사로<br>일평균 8천~1만 여건의 뉴스 기사를 데이터 원문 형태로 제공받아<br>고객사가 원하는 환경에  맞게 이용이 가능하도록 서비스하고 있습니다.</p>
                    <a href="http://news-plaza.com/newsml/" target="_blank">뉴스플라자 바로가기</a> </div>
            </div>
            <div class="sub_box np1">
                <div class="text_box tbr">
                    <h3>다양한 용도로 활용</h3>
                    <p>홈페이지 게시, 스크랩, 인트라넷 활용 등 <br>
                        온라인 뉴스를 다양한 목적에 맞게 <br>
                        간편하게 이용할 수 있습니다. </p>
                </div>
            </div>
            <div class="sub_box np2">
                <div class="text_box tbl">
                    <h3>키워드 서비스</h3>
                    <p>사용자등록 키워드를 최대 10개까지 허용하며<br>기업/상품/산업 등 다양한 분야의 뉴스를 제공합니다.</p>
                </div>
            </div>
            <div class="sub_box np3">
                <div class="text_box tbr">
                    <h3>통합 서비스</h3>
                    <p>고객사 내부망에서 활용할 수 있도록<br>
                        카테고리별로 분류된 뉴스의<br>
                        원문 데이터를 통합하여 제공합니다.</p>
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
