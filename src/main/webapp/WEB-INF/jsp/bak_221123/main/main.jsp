<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<title>다하미커뮤니케이션즈</title>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/basic.css">
<link rel="stylesheet" href="/css/jquery.fullPage.css">
<link rel="stylesheet" href="/css/animate.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/js/jquery.fullPage.js"></script>
<script type="text/javascript" src="/js/main.js"></script>
<script type="text/javascript" src="/js/gnb.js"></script>
<jsp:include page="../common/google_analytics.jsp"></jsp:include>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<div id="wrap" class="main">
    <div id="gnb">
        <h1><a href="main.html">logo</a></h1>
        <ul class="gnb_menu">
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="company.html">회사소개</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="company.html" target="_parent">다하미 소개</a></li>
                            <li><a href="company.html" target="_parent">연혁</a></li>
                            <li><a href="company.html" target="_parent">오시는 길</a></li>
                        </ul>
                    </dd>
                </dl>
            </li>
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="service.html">서비스소개</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="service.html" target="_parent">스크랩마스터</a></li>
                            <li><a href="service.html" target="_parent">클리핑온</a></li>
                            <li><a href="service.html" target="_parent">티페이퍼</a></li>
                            <li><a href="service.html" target="_parent">뉴스뱅크</a></li>
                            <li><a href="service.html" target="_parent">e-NIE</a></li>
                            <li><a href="service.html" target="_parent">앱 서비스</a></li>
                        </ul>
                    </dd>
                </dl>
            </li>
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="recruit.html">인재경영</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="recruit.html" target="_parent">인재상</a></li>
                            <li><a href="recruit.html" target="_parent">채용전형</a></li>
                            <li><a href="recruit.html" target="_parent">인사제도</a></li>
                            <li><a href="recruit.html" target="_parent">직무소개</a></li>
                        </ul>
                    </dd>
                </dl>
            </li>
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="community.html">커뮤니티</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="community.html" target="_parent">새소식</a></li>
                            <li><a href="community.html" target="_parent">문의하기</a></li>
                        </ul>
                    </dd>
                </dl>
            </li>
        </ul>
        <div class="navi_layer" style="height: 220px;"> </div>
        <div class="callcenter"><a href="community.html" target="_parent">고객센터</a></div>
    </div>
    <div id="fullpage">
        <div class="section" id="section0">
            <div class="item">
                <div class="bg bg1"></div>
                <div class="box_intro">
                    <h2 class="title">What we do</h2>
                    <div class="separator"></div>
                    <p>㈜다하미커뮤니케이션즈는 미디어 플랫폼을 개발해 뉴스에 날개를 답니다.<br>
                        더 편하게 활용되도록 더 널리 읽히도록</p>
                </div>
            </div>
        </div>
    <div class="section" id="section1">
            <div class="item">
                <div class="bg bg2"></div>
                <div class="box_intro">
                    <h2 class="title">What we do</h2>
                    <div class="separator"></div>
                    <p>㈜다하미커뮤니케이션즈는 미디어 플랫폼을 개발해 뉴스에 날개를 답니다.<br>
                        더 편하게 활용되도록 더 널리 읽히도록</p>
                </div>
            </div>
        </div>
        <div class="section" id="section2">
            <div class="item">
                <div class="bg bg3"></div>
                <div class="box_intro">
                    <h2 class="title">What we do</h2>
                    <div class="separator"></div>
                    <p>㈜다하미커뮤니케이션즈는 미디어 플랫폼을 개발해 뉴스에 날개를 답니다.<br>
                        더 편하게 활용되도록 더 널리 읽히도록</p>
                </div>
            </div> 
        </div>
    </div>
    <div id="footer">
        <div class="foot_lt">Copyright ⓒ DAHAMI Communications. All rights reserved.</div>
        <div class="foot_rt">
            <ul class="foot_menu">
                <li class="color">개인정보처리방침</li>
                <li>사이트맵</li>
            </ul>
            <div id="family_site">주요 서비스 바로가기</div>
        </div>
    </div>
    <div id="top"><a href="#">Top</a></div>
</div>
</body>
</html>