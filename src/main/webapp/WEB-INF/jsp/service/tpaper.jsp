<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="<%=request.getContextPath()%>/images/dahami_favicon.ico">
<meta name="description" content="뉴스저작권, 신문스크랩, 뉴스스크랩, 뉴스모니터링, 티페이퍼, 홍보관리, 방송뉴스, 미디어리포트" />
<meta property="og:title" content="다하미커뮤니케이션즈">
<meta property="og:description" content="뉴스저작권, 신문스크랩, 뉴스스크랩, 뉴스모니터링, 티페이퍼, 홍보관리, 방송뉴스, 미디어리포트">
<title>다하미커뮤니케이션즈</title>
<link rel="canonical" href="https://www.dahami.com/">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/gnb.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.bxslider.js"></script>
<jsp:include page="../common/google_analytics.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		$('.gnb_menu .menu:eq(1) .gnb_dl dt').addClass('on');
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
            <p>다하미커뮤니케이션즈의 다양한 서비스를 소개합니다.</p>
        </div>
        <div class="sub_navi">
            <ul class="sub_navi_li sub_sev_li">
                <li><a href="<%=request.getContextPath()%>/service/scrapmaster.html">스크랩마스터</a></li>
                <li><a href="<%=request.getContextPath()%>/service/clipping.html">클리핑온</a></li>
                <li class="on"><a href="#">티페이퍼</a></li>
                <li><a href="<%=request.getContextPath()%>/service/newsbank.html">뉴스뱅크</a></li>
                <li><a href="<%=request.getContextPath()%>/service/enie.html">e-NIE</a></li>
                <li><a href="<%=request.getContextPath()%>/service/newsplaza.html">뉴스플라자</a></li>
                <li><a href="<%=request.getContextPath()%>/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
        <div id="sub_cont">
            <div class="tp_title">
                <div class="serv_tit">
                    <p>손끝으로 펼쳐지는 <b>뉴미디어 세상</b></p>
                    <h3>티페이퍼5.0</h3>
                    <div class="laptop_tp"></div>
                    <div class="overflow">
                         <div class="bx-wrapper">
                             <div class="bxslider">
                                 <div><img src="<%=request.getContextPath()%>/images/service/img_tp_top_01.png"></div>
                                 <div><img src="<%=request.getContextPath()%>/images/service/img_tp_top_02.png"></div>
                                 <div><img src="<%=request.getContextPath()%>/images/service/img_tp_top_03.png"></div>
                             </div>
                         </div>
                     </div>
                 </div>
                <div class="serv_txt">
                    <p>디지털도서관 및 로비 디스플레이를 위한<br>
                        최고의 전자신문 솔루션 <b>티페이퍼</b><br><br>

                        전자신문 솔루션 티페이퍼가 새로워졌습니다.<br><br>

                        어두웠던 디자인을 밝고 선명하게 하고 UI를 개선하여 신문 열람 시 몰입감과 사용성을 높였습니다.<br>
                        새로 추가한 홈 화면에서는 오늘의 1면 주요기사, 현재 날씨, 추천 도서 등 다양한 콘텐츠를 더해 활용성을 높였습니다.<br><br>

                        앞으로 추가될 더 다양한 기능과 콘텐츠를 기대해주세요.
                    </p>
                    <a href="http://www.t-paper.co.kr" target="_blank">티페이퍼 홈페이지 바로가기</a>
                </div>
            </div>
            <div class="sub_box tp1">
                <div class="text_box tbr">
                    <h3>신문보기</h3>
                    <p>매일 아침 자동으로 당일자 신문을 준비합니다.<br><br>
                        구독 중인 모든 신문 목록을 한 번에 확인할 수 있습니다.<br>
                        최대 1년 이내 발행된 신문을 자유롭게 선택해 보세요.<br><br>
                        또, 선택한 신문의 전체 기사 목록을 보면서<br>
                        면 단위나 기사 단위로 편하게 이동할 수 있습니다.</p>
                </div>
            </div>
            <div class="sub_box tp2">
                <div class="text_box tbl">
                    <h3>검색하기</h3>
                    <p>많은 양의 기사를 검색해도 빠르게 <br>
                        검색결과를 출력합니다.<br>
                        새로 추가한 검색결과 정렬 기능을 이용해 <br>
                        원하는 기사를 더 빠르게 찾아보세요.<br><br>
                        추후 검색 기간을 지정하는 기능도 추가할 예정입니다.</p>
                </div>
                <img src="<%=request.getContextPath()%>/images/service/pd_news_h_03.gif">
            </div>
            <div class="sub_box tp3">
                <div class="text_box tbr">
                    <h3>다양한 부가 기능</h3>
                    <p>고화질 홍보 영상과 티커가 홈 화면에서 항시<br>
                        노출되도록 해 홍보 효과를 높였습니다.<br>
                        <br>
                        미사용 시 뜨는 화면보호 기능인 대기화면의<br>
                        다양한 옵션을 통해 동영상이나 이미지, 지면 등을<br>
                        보여줄 수 있습니다.</p>
                </div>
            </div>
            <div class="sub_box tp4">
                <div class="text_box tbl">
                    <h3>효율적인 관리 시스템</h3>
                    <p>종이신문을 비치하고 보관하는 데 드는<br>
                        노력과 공간을 절감할 뿐만 아니라<br>
                        키오스크 자동 실행, 신문 자동 업데이트, 이용 통계 등<br>
                        기기를 관리하는 데 도움이 되는<br>
                        다양한 관리자 기능을 제공합니다.</p>
                </div>
            </div>
        </div>
    </div>
    <div id="bottom">
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
<script>
    $('.bxslider').bxSlider({
        auto: true,
        pause: 1500,
        slideWidth: 654
    });
</script>
</html>