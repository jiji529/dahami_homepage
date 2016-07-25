<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<title>dahami</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>
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
                <li><a href="/service/newsplaza.html">뉴스플라자</a></li>
                <li class="on"><a href="/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
        <div id="sub_cont">
            <div class="wna_title">
                <div class="serv_tit">
                    <p>스마트한 디지털 미디어</p>
                    <h3>웹 & 앱 서비스</h3>
                </div>
                <div class="wna"> </div>
                <div class="serv_txt">
                    <p>다하미커뮤니케이션즈는 스마트 미디어 시대에 맞는 <br>
                        다양한 서비스를 제공하기 위해 끊임없이 노력하고 있습니다. <br>
                        <br>
                        기존 서비스 외에 고객의 요구사항에 따라 디바이스별 뷰어와 전용 모바일앱을 개발하고 있으며, <br>
                        그밖에 대내외용으로 목적에 맞게 이용할 수 있도록 <br>
                        보도관리시스템 등을 개발하여 납품하고 있습니다. </p>
                </div>
            </div>
            <div class="sub_box wna1">
                <div class="text_box tbr">
                    <h3>맞춤화 서비스</h3>
                    <p>관심 뉴스를 홈페이지나 사내 업무관리시스템 등 <br>
                        원하는 곳에 임베딩하거나 <br>
                        전용 DB형 독립 시스템으로 구축해드립니다.</p>
                </div>
            </div>
            <div class="sub_box wna2">
                <div class="text_box tbl">
                    <h3>모바일 앱</h3>
                    <p>지면신문의 초판 앱과 최종판 앱 다수를 비롯해<br>
                        뉴스의 영업적 활용이나 대고객 서비스로 제공할 수 있는 <br>
                        앱을 커스터마이징 개발, 운영합니다.</p>
                </div>
            </div>
            <div class="sub_box wna3">
                <div class="text_box tbr">
                    <h3>PDF 웹뷰어</h3>
                    <p>국내 유수의 매체가 발행하는<br>지면신문의 초판과 종판을<br>웹에서 볼 수 있도록 간편한 UI로 제공합니다.</p>
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
