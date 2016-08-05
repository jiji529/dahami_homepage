<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>dahami</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery.bxslider.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>

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
                <li class="on"><a href="/service/clipping.html">클리핑온</a></li>
                <li><a href="/service/tpaper.html">티페이퍼</a></li>
                <li><a href="/service/newsbank.html">뉴스뱅크</a></li>
                <li><a href="/service/enie.html">e-NIE</a></li>
                <li><a href="/service/newsplaza.html">뉴스플라자</a></li>
                <li><a href="/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
                <div id="sub_cont">
                        <div class="clipp_title">
                                <div class="serv_tit">
                                        <p>국내 최초의 <b>방송뉴스 모니터링 서비스</b></p>
                                        <h3>클리핑온</h3>
                                </div>
                                <div class="laptop">
                                        <div class="overflow">
                                            <ul class="bxslider">
											<li><img src="<%=request.getContextPath()%>/images/service/screen_cp1.png" /></li>
											<li><img src="<%=request.getContextPath()%>/images/service/screen_cp2.png" /></li>
											<li><img src="<%=request.getContextPath()%>/images/service/screen_cp3.png" /></li>
											</ul>
                                        </div>
                                        <div id="bx-pager">
											    <ul>
											        <li> <a data-slide-index="0" href="">1</a>
											        </li>
											        <li> <a data-slide-index="1" href="">2</a>
											        </li>
											        <li> <a data-slide-index="2" href="">3</a>
											        </li>
											    </ul>
											</div>
                                </div>
                                <div class="serv_txt">
                                        <p>지상파/보도전문채널/종합편성 등 국내 9개 방송사와 정식 계약을 체결해 <br>방송뉴스 저작권 문제를 해결하였습니다.<br><br>
예상치 못한 보도에 대한 즉각적인 대응 및 위기 관리가 가능합니다.<br>
또한, 스크랩마스터와 연동을 통해 언론 스크랩 업무를 통합해 드립니다.
                                        </p>
                                        <a href="http://clippingon.co.kr" target="_blank">클리핑온 홈페이지 바로가기</a>
                                  </div>
                           </div>
                        <div class="sub_box cp1">
                                <div class="text_box tbr">
                                        <h3>뉴스 통합이용 플랫폼 서비스</h3>
                                        <p>원 스탑으로 모든 방송사의 뉴스 검색이 가능합니다.<br>
번거롭게 여러 사이트에서 검색하실 필요가 없습니다. <br>
오직 클리핑온 하나면 충분합니다.</p>
                                </div>
                        </div>
                        <div class="sub_box cp2">
                                <div class="text_box tbl">
                                        <h3>자동검색/필터링</h3>
                                        <p>사용자가 지정한 검색 키워드로<br>방송뉴스를 자동 검색 및 필터링 하여 제공합니다.<br>
수 많은 키워드를 일일히 검색하실 필요도 없습니다. <br>
키워드별로 날짜/방송사/프로그램을 저장해 놓으면<br>자동으로 검색해 드립니다.</p>
                                </div>
                        </div>
                        <div class="sub_box cp3">
                                <div class="text_box tbr">
                                        <h3>모바일 알리미 서비스</h3>
                                        <p>설정해 놓은 키워드로 뉴스를<br>원하는 시간에 알려드립니다.<br>
모니터링 즉시 알려주는 실시간 알림 기능으로<br>예상치 못한 보도에 대한<br>즉각적인 대응 및 위기 관리가 가능합니다.</p>
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