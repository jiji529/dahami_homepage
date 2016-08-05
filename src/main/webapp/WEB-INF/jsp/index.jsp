<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>dahami</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/basic.css">
<link rel="stylesheet" href="css/jquery.fullPage.css">
<link rel="stylesheet" href="css/animate.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery.fullPage.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/gnb.js"></script>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<div id="wrap" class="main">
    <div id="gnb">
        <jsp:include page="common/header.jsp"></jsp:include>
    </div>
    <div id="fullpage">
        <div class="section" id="section0">
            <div class="item">
                <div class="bg bg1"></div>
                <div class="box_intro">
                    <h2 class="title">What we do</h2>
                    <div class="separator"></div>
                    <p>다하미커뮤니케이션즈는 원하는 정보를 쉽고 빠르게 찾아드립니다.</p>
                </div>
            </div>
        </div>
    	<div class="section" id="section1">
            <div class="item">
                <div class="bg bg2"></div>
                <div class="box_intro">
                    <h2 class="title">What we deliver</h2>
                    <div class="separator"></div>
                    <p>정보를 소비하는 새로운 방식을 제공해 고객의 비즈니스에 가치를 더합니다.</p>
                </div>
            </div>
        </div>
        <div class="section" id="section2">
            <div class="item">
                <div class="bg bg3"></div>
                <div class="box_intro">
                    <h2 class="title">What we promise</h2>
                    <div class="separator"></div>
                    <p>고객 만족과 신뢰를 위해 최선을 다해 정도를 지킵니다.</p>
                </div>
            </div> 
        </div>
    </div>
    <div id="bottom">
        <jsp:include page="common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>