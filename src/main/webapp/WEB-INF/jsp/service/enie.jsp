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
                <li><a href="/service/scrapmaster.html">스크랩마스터</a></li>
                <li><a href="/service/clipping.html">클리핑온</a></li>
                <li><a href="/service/tpaper.html">티페이퍼</a></li>
                <li><a href="/service/newsbank.html">뉴스뱅크</a></li>
                <li class="on"><a href="/service/enie.html">e-NIE</a></li>
                <li><a href="/service/newsplaza.html">뉴스플라자</a></li>
                <li><a href="/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
        <div id="sub_cont">
            <div class="enie_title">
                <div class="serv_tit">
                    <p>컴퓨터로 <b>신문을 보며 공부</b>해요</p>
                    <h3>e-NIE</h3>
                </div>
                <div class="laptop">
                    <div class="overflow">
                        <ul class="bxslider">
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_nie1.png" /></li>
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_nie2.png" /></li>
                            <li><img src="<%=request.getContextPath()%>/images/service/screen_nie3.png" /></li>
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
                    <p>e-NIE는 한국언론진흥재단이 시행하는 신문활용교육 사업 중 하나로<br>
                        다하미커뮤니케이션즈는 웹프로그램을 개발하고 운영하고 있습니다.<br>
                        <br>
                        신문을 통해 인지학습 능력을 키울 수 있을 뿐 아니라<br>
                        가치관 및 인성까지 발달시킬 수 있습니다 </p>
                    <a href="http://enie.forme.or.kr/" target="_blank">e-NIE 바로가기</a> </div>
            </div>
            <div class="sub_box nie1">
                <div class="text_box tbr">
                    <h3>디지털화된 교육</h3>
                    <p>종이신문을 그대로 컴퓨터로 옮겨 <br>
                        인터넷이 접속되는 곳에서는 언제 어디서든<br>
                        편리하게 신문을 읽고, 검색하고, 스크랩하여<br>
                        교육에 활용할 수 있습니다.</p>
                </div>
            </div>
            <div class="sub_box nie2">
                <div class="text_box tbl">
                    <h3>안전한 교육</h3>
                    <p>발행된 신문 위주로 서비스하기 때문에<br>학생들이 인터넷의 유해한 콘텐츠에<br>노출될 염려가 없습니다.</p>
                </div>
            </div>
            <div class="sub_box nie3">
                <div class="text_box tbr">
                    <h3>미디어리터러시 통합 교육</h3>
                    <p>
미디어교육포털 포미사이트(<a href="http://forme.or.kr" target="_blank">forme.or.kr</a>)도<br>함께 개발하여 운영하고 있으며, <br>미디어리터러시 교육 정보를 <br>통합하여 제공하고 있습니다.
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
