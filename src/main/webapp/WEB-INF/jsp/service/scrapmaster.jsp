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
                <li class="on"><a href="/service/scrapmaster.html">스크랩마스터</a></li>
                <li><a href="/service/clipping.html">클리핑온</a></li>
                <li><a href="/service/tpaper.html">티페이퍼</a></li>
                <li><a href="/service/newsbank.html">뉴스뱅크</a></li>
                <li><a href="/service/enie.html">e-NIE</a></li>
                <li><a href="/service/newsplaza.html">뉴스플라자</a></li>
                <li><a href="/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
                <div id="sub_cont">
                        <div class="scrap_title">
                                <div class="serv_tit">
                                        <p>세계 최초 종이신문 <b>온라인스크랩 솔루션</b></p>
                                        <h3>스크랩마스터</h3>
                                </div>
                                <div class="laptop">
                                        <div class="overflow">
                                            <ul class="bxslider">
											<li><img src="<%=request.getContextPath()%>/images/service/screen_sm1.png" /></li>
											<li><img src="<%=request.getContextPath()%>/images/service/screen_sm2.png" /></li>
											<li><img src="<%=request.getContextPath()%>/images/service/screen_sm3.png" /></li>
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
                                        <p>다하미는 매일 스크랩마스터를 통해 200여 종이신문을<br>신속, 정확하게 제공해 드립니다.
<br>
                                        <br>
                                        한국언론진흥재단 뉴스 저작권 사업단 [뉴스코리아]의 공식 유통사로서<br>
                                        중앙부처, 지방자치단체, 공기업/공공기관, 일반기업 등 국내를 대표하는 1000여 고객사가 선택한<br>
                                        스크랩마스터는 홍보업무 효율화를 위한 선택이 아닌 필수입니다.
                                        </p>
                                        <a href="http://scrapmaster.co.kr" target="_blank">스크랩마스터 홈페이지 바로가기</a>
                                  </div>
                           </div>
                        <div class="sub_box sm1">
                                <div class="text_box tbr">
                                        <h3>스크랩마스터 프리미엄</h3>
                                        <p>보도된 뉴스의 검색으로부터 2차 활용까지<br>한 번에 해결할 수 있습니다.<br>
                                        뉴스 가치평가 및 통계는 물론 <br>스크랩 뉴스의 데이터베이스 구축이 가능합니다.</p>
                                </div>
                        </div>
                        <div class="sub_box sm2">
                                <div class="text_box tbl">
                                        <h3>스크랩마스터 모바일</h3>
                                        <p>언제 어디서든 모바일 단말기를 통해 <br>
                                        기사를 확인할 수 있습니다. <br>
                                        자동검색, 지면검색과 스크랩 등 <br>기사의 공유가 편리한 모바일 앱입니다</p>
                                </div>
                        </div>
                        <div class="sub_box sm3">
                                <div class="text_box tbr">
                                        <h3>뉴스 스크랩 대행</h3>
                                        <p>이른 새벽 과중한 스크랩 업무에서 벗어나세요!<br> 신속, 정확한 업무 대행을 위해<br>분야별 전문가가 대기하고 있습니다.
</p>
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
