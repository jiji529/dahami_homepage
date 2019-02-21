<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>다하미커뮤니케이션즈</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>
<jsp:include page="../common/google_analytics.jsp"></jsp:include>
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
                <li class="on"><a href="/service/tpaper.html">티페이퍼</a></li>
                <li><a href="/service/newsbank.html">뉴스뱅크</a></li>
                <li><a href="/service/enie.html">e-NIE</a></li>
                <li><a href="/service/newsplaza.html">뉴스플라자</a></li>
                <li><a href="/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
        <div id="sub_cont">
            <div class="tp_title">
                <div class="serv_tit">
                    <p>손끝으로 펼쳐지는 <b>뉴미디어 세상</b></p>
                    <h3>티페이퍼</h3>
                </div>
                <div class="serv_txt">
                    <p>이제 신문도 [디지털]로 보세요! <br />
                        <br />
                        티페이퍼는 종이신문을 펼쳐 보듯이 손으로 넘겨보는 전자신문 솔루션입니다. <br />
                        이용자와 관리자 모두 만족하실 최상의 디지털신문 서비스를 제공해 드리겠습니다. </p>
                    <a href="http://www.t-paper.co.kr" target="_blank">티페이퍼 홈페이지 바로가기</a> </div>
            </div>
            <div class="sub_box tp1">
                <div class="text_box tbr">
                    <h3>지면보기</h3>
                    <p>매일 아침 자동으로 당일자 신문을 준비합니다.<br />
                        실제 종이신문과 동일한 신문 사이즈로 구독 가능하고<br />
                        개별기사도 확대해 볼 수 있습니다.</p>
                </div>
            </div>
            <div class="sub_box tp2">
                <div class="text_box tbl">
                    <h3>검색하기</h3>
                    <p>간편한 UI로 누구나 쉽게 사용할 수 있습니다. <br />
                        오늘자 신문 및 과거 신문의 검색 기능을 제공합니다. </p>
                </div>
            </div>
            <div class="sub_box tp3">
                <div class="text_box tbr">
                    <h3>홍보페이지</h3>
                    <p>지면보기 외에도 홍보페이지와 메시지(티커) 기능도<br />
                        활용할 수 있습니다. <br />
                        채용정보/주소검색/진학정보 등<br />
                        부가정보 서비스 이용도 가능합니다.</p>
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