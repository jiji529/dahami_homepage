<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>dahami</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style1.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>
<script type="text/javascript">
$(document).ready(function (){
	$('.gnb_menu .menu:eq(1) .gnb_dl dt').addClass('on');
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
        <div class="navi_layer" style="height: 220px;"> </div>
        <div class="callcenter"><a href="community.html#call" target="_parent">고객센터</a></div>
    </div>
    <div class="contents">
        <div class="sub_top sub_img2">
            <h2>서비스소개</h2>
            <p>다하미커뮤니케이션즈의 다양한 서비스를 소개합니다.</p>
        </div>
        <div class="sub_navi">
            <ul class="sub_navi_li">
                <li class="on"><a href="/service/service.html">스크랩마스터</a></li>
                <li><a href="#">클리핑온</a></li>
                <li><a href="#">티페이퍼</a></li>
                <li><a href="#">뉴스뱅크</a></li>
                <li><a href="#">e-NIE</a></li>
                <li><a href="#">뉴스플라자</a></li>
                <li><a href="/service/webapp.html">웹&amp;앱 서비스</a></li>
            </ul>
        </div>
        <img src="../../../images/service/sev1.jpg"> </div>
    <div id="bottom">
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
