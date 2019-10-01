<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="css/basic.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script type="text/javascript" src="js/gnb.js"></script>
    <jsp:include page="common/google_analytics.jsp"></jsp:include>
    <script type="text/javascript">

        /********************** 추석 **************************/

        var winWidth = 382;
        var winHeight = 222; 
        var winURL = "/images/popup_20190909.jpg";
        var winName = "popup";
        var winPosLeft = (screen.width - winWidth) / 2;
        var winPosTop = (screen.height - winHeight) / 2;
        var winOpt = "width="+winWidth+",height="+winHeight+",top="+winPosTop+",left="+winPosLeft;
        //window.open(winURL, winName, winOpt + "");

        function getCookie(name){
            var wcname = name + '=';
            var wcstart, wcend, end;
            var i = 0;

            while(i <= document.cookie.length) {
                wcstart = i;
                wcend = (i + wcname.length);
                if(document.cookie.substring(wcstart, wcend) == wcname) {
                    if((end = document.cookie.indexOf(';', wcend)) == -1)
                    end = document.cookie.length;
                    return document.cookie.substring(wcend, end);
                }

                i = document.cookie.indexOf('', i) + 1;

                if(i == 0)
                    break;
            }
            return '';
        }

        function popup(){ // 오늘 하루동안 그만 보기 팝업
            var url = "/common/popup.html";
            window.open(url, "공지사항", "width=386, height=457, status=no, scrollbars=no, toolbar=no, menubar=no");
        }

        $(document).ready(function() {
            var today = new Date();
            var holiday = new Date(2019, 1, 6); // 2019년 2월 6일까지 공지발생

            //console.log(getCookie('popup') != 'start' && (today <= holiday));

            // 공지사항 팝업 (필요시 주석 해제)
            /*
            if(getCookie('popup') != 'start' && (today <= holiday)) {       
                popup();
            }
            */
        });
    </script>
</head>

<body>
    <div id="wrap" class="main">
        <div id="gnb">
            <jsp:include page="common/header.jsp"></jsp:include>
        </div>
        <section class="visual">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide slide1">
                        <div class="txt_box">
                            <h1>
                                <p class="txt2">Make your business</p>
                                <p class="txt1">SMARTER</p>
                            </h1>
                            <p class="txt5">다하미와 함께 여러분의 비즈니스에 날개를 달아보세요.<br>
                                AI 기술을 기반으로 대량의 미디어 데이터를 스마트하게 활용하실 수 있도록 도와드립니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide slide2">
                        <div class="txt_box">
                            <h1>
                                <p class="txt2">We grow with</p>
                                <p class="txt1">Digital Contents Industry</p>
                            </h1>
                            <p class="txt5">다하미는 신문, 방송뉴스, 온라인뉴스, 보도사진, SNS 및 커뮤니티 등 다양한 미디어 콘텐츠를 통합 서비스하고 있습니다.<br>
                                디지털 콘텐츠 시장의 빠른 변화에 발맞추기 위해 지속적으로 제휴를 확대하고 있습니다.<br>이를 통해 여러 미디어 회사와 함께 성장할 기회를 만들어내고 있습니다.
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide slide3">
                        <div class="txt_box">
                            <h1>
                                <p class="txt2">We maintain</p>
                                <p class="txt1">High Availability</p>
                            </h1>
                            <p class="txt5">다하미는 20년 이상의 운영 노하우로 정부, 지자체 및 공공기관을 비롯해 <br>국내 유수한 1,000여개 기업에 안정적으로 서비스를 제공하고 있습니다.<br>
                                또한 대기업 수준의 업계 최고를 자랑하는 인프라를 구축하여 높은 품질을 보장하고 있습니다.

                            </p>
                        </div>
                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>
        </section>
        <section class="overview">
            <div class="txt_box">
                <div class="ov_left">
                    <p class="txt7">OVERVIEW</p>
                    <p class="txt2">디지털 미디어 콘텐츠<br>서비스 HUB</p>
                    <a href="<%=request.getContextPath()%>/company/company.html" class="ov_btn">자세히 보기</a>
                </div>
                <div class="ov_right">
                    <p class="txt4">감성이 결합된 스마트 기술을 통한 인간 중심의 서비스. <br>다하미가 그리는 디지털 미디어 서비스의 미래입니다.
                    </p>
                    <p class="txt6">빅데이터와 인공지능 기술을 활용하여 더 나은 업무 환경과 미디어 라이프를 제공하고자 합니다.</p>
                </div>
            </div>
        </section>
        <section class="sum">
            <div class="txt_box">
                <div data-aos="fade-up" data-aos-delay="0">
                    <p class="box_tit">1<span>st</span></p>
                    <p class="box_cont">언론 모니터링<br>업계 1위</p>
                </div>
                <div data-aos="fade-up" data-aos-delay="400">

                    <p class="box_tit">21<span>years</span></p>
                    <p class="box_cont">디지털 미디어 분야<br>연구개발</p>
                </div>
                <div data-aos="fade-up" data-aos-delay="800">

                    <p class="box_tit">1.3<span>천</span></p>
                    <p class="box_cont">매체 및 고객 <br>파트너</p>
                </div>
                <div data-aos="fade-up" data-aos-delay="1200">
                    <p class="box_tit">3.3<span>억</span></p>
                    <p class="box_cont">콘텐츠 보유</p>
                </div>
            </div>
        </section>
        <section class="rnd">
            <div class="txt_box">
                <div data-aos="fade-up" data-aos-delay="0">
                    <p class="txt2">R&amp;D CENTER</p>
                    <p class="txt5">다하미커뮤니케이션즈 기술개발연구소는<br>
                        지속적인 연구개발을 통해 서비스를 향상시키고자 노력하고 있습니다.
                    </p>
                </div>
            </div>
        </section>
        <section class="service">
            <div class="txt_box">
                <p class="txt7">SOLUTIONS</p>
                <p class="txt3">다하미커뮤니케이션즈의 서비스를 소개합니다.</p>
                <ul>
                    <li data-aos="fade-up" data-aos-delay="0" class="sv_li1"><a href="/service/scrapmaster.html" target="_parent">
                            <div class="sv_img"></div>
                            <p class="txt6">세계 최초 뉴스 통합 모니터링 솔루션</p>
                            <p class="txt4">스크랩마스터</p>
                        </a>
                    </li>
                    <li data-aos="fade-up" data-aos-delay="400" class="sv_li2"><a href="/service/clipping.html" target="_parent">
                        <div class="sv_img"></div>
                        <p class="txt6">국내 유일 방송 통합 모니터링 솔루션</p>
                        <p class="txt4">클리핑온</p></a>
                    </li>
                    <li data-aos="fade-up" data-aos-delay="800" class="sv_li3"><a href="/service/tpaper.html" target="_parent">
                        <div class="sv_img"></div>
                        <p class="txt6">터치형 디지털신문 디스플레이 솔루션</p>
                        <p class="txt4">티페이퍼</p></a>
                    </li>
                    <li data-aos="fade-up" data-aos-delay="1200" class="sv_li4"><a href="/service/newsbank.html" target="_parent">
                        <div class="sv_img"></div>
                        <p class="txt6">25개 매체 보도사진 통합 라이브러리</p>
                        <p class="txt4">뉴스뱅크</p></a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="banner">
            <div class="txt_box">
                <div class="main_bn1">
                    <p>대표전화</p>
                    <div class="bn1_rt">
                        <p class="txt4">02-593-4174</p>
                        <p class="txt7">평일 : 09:00 ~ 17:00 / 토,일요일 휴무</p>
                    </div>
                </div>
                <div class="main_bn2">
                    <p><span></span><a style="color:#000" href="/community/community.html?loc=call">문의하기</a></p>
                </div>

                <div class="main_bn3">
                    <p><span></span><a style="color:#000" href="/community/community.html?loc=faq">자주 묻는 질문</a></p>
                </div>

            </div>
        </section>
        <div id="bottom">
            <jsp:include page="common/footer.jsp"></jsp:include>
        </div>
    </div>

    <script src="js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            spaceBetween: 30,
            centeredSlides: true,
            autoplay: {
                delay: 2500,
                disableOnInteraction: false,
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
    <script>
        AOS.init();
    </script>
</body>

</html>