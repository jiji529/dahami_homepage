<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta name="format-detection" content="telephone=no"><!-- ios 전화번호 -->
	
    <jsp:include page="../common/head_meta.jsp"/>
    
    <link rel="canonical" href="https://www.dahami.com/">
    <link rel="SHORTCUT ICON" href="<%=request.getContextPath()%>/images/dahami_favicon.ico">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style_mo.css">
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="<%=request.getContextPath()%>/js/gnb.js"></script>
    <jsp:include page="../common/google_analytics.jsp"></jsp:include>
    <script src="<%=request.getContextPath()%>/js/parallax.js"></script>
    <style>
        div.fixed {
            position: fixed;
            top: 0;
            left: 0;
        }
    </style>
    <script>
        $(document).ready(function() {
            $('.gnb_menu .menu:eq(0) .gnb_dl dt').addClass('on');

            $(window).bind('scroll', function() {
                if ($(window).scrollTop() > 250) {
                    $('.sub_navi').addClass('fixed');
                } else {
                    $('.sub_navi').removeClass('fixed');
                }

                if ($(window).scrollTop() > 490 && $(window).scrollTop() < 1960) {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(0)").addClass("on");
                } else if ($(window).scrollTop() > 1960 && $(window).scrollTop() < 2420) {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(1)").addClass("on");
                } else if ($(window).scrollTop() > 2420 && $(window).scrollTop() < 2800) {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(2)").addClass("on");
                }

            });

            var loc = $(location).attr('search');

            if (loc != "") {
                loc = loc.replace("?loc=", "");

                if (loc == "intros") {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(0)").addClass("on");
                    $('html, body').animate({
                        scrollTop: $(".intro_box1").offset().top
                    }, 1000);
                } else if (loc == "history") {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(1)").addClass("on");
                    $('html, body').animate({
                        scrollTop: $("#history .inner").offset().top
                    }, 1500);
                } else if (loc == "map") {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(2)").addClass("on");
                    $('html, body').animate({
                        scrollTop: $(".maps").offset().top
                    }, 1500);
                } else {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(1)").addClass("on");
                    $('html, body').animate({
                        scrollTop: $("#intros").offset().top
                    }, 1000);
                }
            } else {
                $('html, body').animate({}, 1000);
            }



            $('.sub_navi_li > li').on('click', function(e) {
                var aTag = $('a', this).attr('href');

                if (aTag == "#intros") {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(0)").addClass("on");
                    $('html, body').animate({
                        scrollTop: $(".intro_box1").offset().top
                    }, 1000);
                } else if (aTag == "#history") {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(1)").addClass("on");
                    $('html, body').animate({
                        scrollTop: $("#history .inner").offset().top
                    }, 1500);
                } else if (aTag == "#map") {
                    $(".sub_navi_li > li").removeClass();
                    $(".sub_navi_li > li:eq(2)").addClass("on");
                    $('html, body').animate({
                        scrollTop: $(".maps").offset().top
                    }, 1500);
                } else {
                    $('html, body').animate({
                        scrollTop: $("#intros").offset().top
                    }, 1000);
                }
            });
        });
    </script>
    <link rel="dns-prefetch" href="//place.map.daum.net">
    <link rel="dns-prefetch" href="//scrapmaster.co.kr">
    <link rel="dns-prefetch" href="//clippingon.co.kr">
    <link rel="dns-prefetch" href="//www.t-paper.co.kr">
    <link rel="dns-prefetch" href="//forme.or.kr">
    <link rel="dns-prefetch" href="//www.newsbank.co.kr">
    <link rel="dns-prefetch" href="//www.news-plaza.co.kr">
</head>

<body>
    <div id="wrap">
        <div id="gnb">
           <jsp:include page="../common/header.jsp"></jsp:include>
        </div>
        <div class="contents">
            <div class="sub_top sub_img1">
                <h2>회사소개</h2>
                <p>다하미커뮤니케이션즈를 소개합니다.</p>
            </div>
            <div class="sub_navi">
                <ul class="sub_navi_li">
                    <li class="on"><a href="#intros">다하미소개</a></li>
                    <li class=""><a href="#history">연혁</a></li>
                    <li class=""><a href="#map">오시는 길</a></li>
                </ul>
            </div>
            <div id="intros">
                <section class="intro_new1">
                    <div class="inner">
                        <h1>디지털미디어 콘텐츠 서비스의<br>HUB를 지향하며</h1>
                        <p>다하미커뮤니케이션즈는 1998년 창업 이래 <br>
                            신문, 방송, 잡지, 인터넷 기사, 보도 사진 등 <br>
                            <strong>미디어 서비스 분야의 혁신</strong>을 지속하고 있는 IT기업입니다.<br><br>

                            기존의 틀에 안주하지 않고 변화와 혁신을 통해 최고의 가치를 추구하며, <br>미디어 서비스 플랫폼 개발을 포함한 다양한 고객중심 서비스를 제공합니다.<br>
                            수많은 정보 속에서 고객에게 유용한 정보를<br> 좀더 쉽고, 신속, 정확하게 전달하고자 합니다.
                        </p>
                    </div>
                </section>
                <section class="intro_new2">
                    <div class="inner">
                        <h1>VISION</h1>
                        <p> 다하미커뮤니케이션즈는 미디어 콘텐츠 서비스를 리드하는 최고의 기업을 추구합니다.
                        </p>
                    </div>
                </section>
                <section class="intro_new3">
                    <div class="inner">
                        <h1>현황</h1>
                        <p>국내 대다수 언론사와 정부부처 및 지방자치단체, 공기업/공공기관은 물론 유수의 대기업 및 중견기업 등 1,000여 고객사와 함께하고 있습니다.<br>
                            이제 다하미커뮤니케이션즈의 고객은 뉴스를 모니터링하는 홍보부서를 넘어<br>디지털미디어 콘텐츠를 활용하고자 하는 다양한 분야의 고객 층으로 확대되고 있습니다.</p>
                        <div class="txt_box">
                            <div data-aos="fade-up" data-aos-delay="0" class="aos-init aos-animate">
                                <p class="box_tit">설립일</p>
                                <p class="box_cont">1998년 5월</p>
                            </div>
                            <div data-aos="fade-up" data-aos-delay="200" class="aos-init aos-animate">
                                <p class="box_tit">본사</p>
                                <p class="box_cont">서울시 중구<br>마른내로 140</p>
                            </div>
                            <div data-aos="fade-up" data-aos-delay="400" class="aos-init aos-animate">

                                <p class="box_tit">임직원 수</p>
                                <p class="box_cont">103명<span>2021년 1월 기준<br>자회사 포함</span></p>
                            </div>
                            <div data-aos="fade-up" data-aos-delay="600" class="aos-init aos-animate">
                                <p class="box_tit">매출액</p>
                                <p class="box_cont">206억<span>2020년 기준</span></p>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="intro_new4">
                    <div class="inner">
                        <h1>다하미커뮤니케이션즈는 <span class="gradation">고객과의 인연</span>을 소중히 여기며 <br>
                            <span class="gradation">고객만족과 신뢰</span>를 위해 정도를 지켜가겠습니다.
                        </h1>
                    </div>
                </section>

                <div class="intro_box1">
                    <p class="video"> <iframe src="https://www.youtube.com/embed/vRsUcoi6PJ8?rel=0&amp;loop=1" allow="autoplay; encrypted-media" allowfullscreen style="border: 0;"></iframe>
                    </p>
                    <!--   <div class="box_line"></div>
                     <h5>Our Company</h5>
                    <p>다하미커뮤니케이션즈는 1998년 창업 이래 신문, 방송, 잡지, 인터넷 기사, 보도 사진 등 미디어 서비스 분야의 혁신을 지속하고 있는 IT기업입니다.
                        <br>
                        기존의 틀에 안주하지 않고 변화와 혁신을 통해 최고의 가치를 추구하며, 미디어 서비스 플랫폼 개발을 포함한 다양한 고객중심 서비스를 제공합니다.
                        <br>
                        수많은 정보 속에서 고객에게 유용한 정보를 좀더 쉽고, 신속, 정확하게 전달하고자 합니다.
                    </p>
 -->
                </div>
                <div class="intro_box4 intro_top parallax-window" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/images/company/ceo.png">
                    <div class="ceo">
                        <p>고객의 환한 웃음을 지상의 과제로 알고<br>
                            열정과 패기,<br>
                            그리고 책임감과 도전 정신을 바탕으로<br>
                            항상 새로운 가치의 서비스를 추구해 나가겠습니다.<br><br><span>대표이사 박용립</span></p>
                    </div>
                </div>
            </div>
            <div id="history">
                <div class="inner">
                    <h3>연혁</h3>
                    <p>다하미커뮤니케이션즈는 뉴스 콘텐츠 시장 확대를 위해 노력해 왔습니다.</p>
                    <div class="history">
                        <div class="history_box">
                            <div class="history_tit">
                                <h4>도입기</h4>
                                <div class="box_line line3"></div>
                                <p>1998 ~ 2007</p>
                            </div>
                            <ul> <li>
                                    <div class="year">2007</div>
                                    <div class="cont">중소기업청 INNO-BIZ 선정</div>
                                </li>
                                <li>
                                    <div class="year">2007</div>
                                    <div class="cont">T-Paper 시스템 개발</div>
                                </li>
                                <li>
                                    <div class="year">2005</div>
                                    <div class="cont">신문활용교육(NIE) 서비스 시작</div>
                                </li>
                                <li>
                                    <div class="year">2004</div>
                                    <div class="cont">스크랩마스터 런칭</div>
                                </li>
                                <li>
                                    <div class="year">2003</div>
                                    <div class="cont">스크랩마스터 개발</div>
                                </li>
                                <li>
                                    <div class="year">2002</div>
                                    <div class="cont">멀티 키오스크 시스템 개발</div>
                                </li>
                                <li>
                                    <div class="year">2001</div>
                                    <div class="cont">3D 웹 브라우저 개발</div>
                                </li>
                                <li>
                                    <div class="year">2000</div>
                                    <div class="cont">벤처기업 인증 획득</div>
                                </li>
                                <li>
                                    <div class="year">1998</div>
                                    <div class="cont">회사 창립</div>
                                </li>
                            </ul>
                        </div>
                        <div class="history_box">
                            <div class="history_tit">
                                <h4>성장기</h4>
                                <div class="box_line line2"></div>
                                <p>2008 ~ 2017</p>
                            </div>
                            <ul> <li>
                                    <div class="year">2017</div>
                                    <div class="cont">클리핑온 플러스 서비스 확대</div>
                                </li>
                                <li>
                                    <div class="year">2016</div>
                                    <div class="cont">스크랩마스터 GS인증 획득</div>
                                </li>
                                <li>
                                    <div class="year">2016</div>
                                    <div class="cont">뉴스뱅크 서비스 사업 양수</div>
                                </li>
                                <li>
                                    <div class="year">2015</div>
                                    <div class="cont">중앙일보 시사매거진 서비스 출시</div>
                                </li>
                                <li>
                                    <div class="year">2014</div>
                                    <div class="cont">디지털초판 서비스 출시</div>
                                </li>
                                <li>
                                    <div class="year">2013</div>
                                    <div class="cont">클리핑온 출시</div>
                                </li>
                                <li>
                                    <div class="year">2013</div>
                                    <div class="cont">한국언론진흥재단 e-NIE 개발</div>
                                </li>
                                <li>
                                    <div class="year">2012</div>
                                    <div class="cont">T-Paper GS인증 획득</div>
                                </li>
                                <li>
                                    <div class="year">2011</div>
                                    <div class="cont">모바일 스크랩마스터 출시</div>
                                </li>
                                <li>
                                    <div class="year">2009</div>
                                    <div class="cont">터치형 T-Paper 런칭</div>
                                </li>
                                <li>
                                    <div class="year">2008</div>
                                    <div class="cont">스크랩마스터 프리미엄 개발</div>
                                </li>
                               
                            </ul>
                        </div>
                        <div class="history_box">
                            <div class="history_tit">
                                <h4>혁신기</h4>
                                <div class="box_line line1"></div>
                                <p>2018 ~ 현재</p>
                            </div>
                           <ul>
                                <li>
                                    <div class="year">2021</div>
                                    <div class="cont">6년연속 청년친화강소기업 선정</div>
                                </li> <li>
                                    <div class="year">2020</div>
                                    <div class="cont">T-Paper v5.0 GS인증 획득</div>
                                </li>
                                <li>
                                    <div class="year">2020</div>
                                    <div class="cont">액션파워와 인공지능 분야 MOU 체결</div>
                                </li>
                                <li>
                                    <div class="year">2020</div>
                                    <div class="cont">데이터바우처 지원사업 판매기업 선정</div>
                                </li>
                                <li>
                                    <div class="year">2020</div>
                                    <div class="cont">국민대학교 차세대 정보컴퓨팅 기술개발 사업 MOU체결</div>
                                </li>
                                <li>
                                    <div class="year">2019</div>
                                    <div class="cont">(주)한화시스템과 디지털미디어<br>콘텐츠분야 AI사업협력 MOU체결</div>
                                </li>
                                <li>
                                    <div class="year">2018</div>
                                    <div class="cont">카이스트 양방향 T-PAPER 런칭</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="maps parallax-window" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/images/company/map.png">
                <div class="map">
                    <h2>오시는 길</h2>
                    <p>서울시 중구 마른내로 140, 5층 (쌍림동, 인쇄정보센터)<br>
                        02 - 593 - 4174<br>
                        <br>
                        지하철 5호선 동대문역사문화공원역 6번 출구</p>
                    <a href="http://place.map.daum.net/8774337" target="_blank">지도 보기</a>
                </div>
            </div>
        </div>
        <div id="bottom">
            <jsp:include page="../common/footer.jsp"></jsp:include>
        </div>
    </div>

    <script>
        AOS.init();
    </script>
    <script>
        $(window).resize(function() {
            if ($(window).width() < 1200) {
                $(".intro_box4").attr("data-image-src", "<%=request.getContextPath()%>/images/company/ceom.png"); // company.jsp 전용
            }
        });
    </script>
</body>

</html>
