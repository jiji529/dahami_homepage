<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<title>다하미커뮤니케이션즈</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/basic.css">
<link rel="stylesheet" href="css/jquery.fullPage.css">
<link rel="stylesheet" href="css/animate.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery.fullPage.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/gnb.js"></script>
</head>
<body onResize="confLayout();" onLoad="confLayout();  ">
<div id="wrap" class="main">
    <div id="gnb">
        <h1><a href="/index.html">logo</a></h1>
        <ul class="gnb_menu">
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="/company/company.html">회사소개</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="/company/company.html?loc=intro" target="_parent">다하미 소개</a></li>
                            <li><a href="/company/company.html?loc=history" target="_parent">연혁</a></li>
                            <li><a href="/company/company.html?loc=map" target="_parent">오시는 길</a></li>
                        </ul>
                    </dd>
                </dl>
            </li>
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="/service/service.html">서비스소개</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="/service/service.html" target="_parent">스크랩마스터</a></li>
                            <li><a href="/service/service.html" target="_parent">클리핑온</a></li>
                            <li><a href="/service/service.html" target="_parent">티페이퍼</a></li>
                            <li><a href="/service/service.html" target="_parent">뉴스뱅크</a></li>
                            <li><a href="/service/service.html" target="_parent">e-NIE</a></li>
                            <li><a href="/service/service2.html" target="_parent">앱 서비스</a></li>
                        </ul>
                    </dd>
                </dl>
            </li>
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="/recruit/recruit.html">인재경영</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="/recruit/recruit.html?loc=talent" target="_parent">인재상</a></li>
                            <li><a href="/recruit/recruit.html?loc=employ" target="_parent">채용전형</a></li>
                            <li><a href="/recruit/recruit.html?loc=welfare" target="_parent">복리후생</a></li>
                        </ul>
                    </dd>
                </dl>
            </li>
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="/community/community.html">커뮤니티</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="/community/community.html?loc=new" target="_parent">새소식</a></li>
                            <li><a href="/community/community.html?loc=call" target="_parent">문의하기</a></li>
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
    <div id="footer">
        <div class="foot_lt">Copyright ⓒ DAHAMI Communications. All rights reserved!</div>
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