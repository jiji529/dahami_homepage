<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<title>다하미커뮤니케이션즈</title>
<link rel="stylesheet" href="css/basic.css">
<link rel="stylesheet" href="css/style.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/gnb.js"></script>
<jsp:include page="../common/google_analytics.jsp"></jsp:include>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<div id="wrap">
    <div id="gnb">
        <h1><a href="main.html">logo</a></h1>
        <ul class="gnb_menu">
            <li class="menu">
                <dl class="gnb_dl">
                    <dt class="on"><a href="company.html">회사소개</a></dt>
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
    <div class="contents">
        <div class="sub_top sub_img1">
            <h2>회사소개</h2>
            <p>다하미커뮤니케이션즈의 다양한 서비스를 소개합니다.</p>
        </div>
        <div class="sub_navi">
            <ul class="sub_navi_li">
                <li class="on"><a href="#intro">다하미소개</a></li>
                <li><a href="#history">연혁</a></li>
                <li><a href="#map">오시는 길</a></li>
            </ul>
        </div>
        <div id="intro">
            <div class="intro_top">
                <h2>㈜다하미커뮤니케이션즈는 뉴스에 날개를 답니다.</h2>
                <p>더 편하게, 더 많이</p>
            </div>
            <div class="intro_box1">
                <div class="inner">
                    <h3>다하미소개</h3>
                    <p>다하미커뮤니케이션즈를 소개합니다.</p>
                    <h2 class="intro_tit">1998년 창업 이래 현재 모바일 퍼스트(mobile first) 시대에 이르기까지<br>
                        전통 신문의 변화에 발맞춰 나아갈 길을 모색하며 돕는 IT 벤처기업입니다.</h2>
                    <p class="intro_txt">2004년 세계 최초로 지면신문을 PC에서 스크랩할 수 있는 솔루션인 'ScrapMaster"를 소개한 이후<br>
                        지속적으로 미디어와 콘텐츠의 융합기술을 연구하고 솔루션 개발에 매진해오고 있습니다.</p>
                </div>
            </div>
            <div class="intro_box2"></div>
            <div class="intro_box3">
                <div class="box_line"></div>
                <h5>Our Customer</h5>
                <p>저희 고객은 국내 언론사 대다수와 정부부처 및 지자체, 공공기관과<br>
                    유수의 대기업 및 중견기업 홍보부서를 비롯해<br>
                    뉴스를 활용하고자 하는 모든 분들로 확대되고 있습니다.</p>
            </div>
            <div class="intro_box4"><div class="ceo"></div>
                <p>고객의 환한 웃음을 지상의 과제로 알고<br>
                    열정과 패기,<br>
                    그리고 책임감과 도전정신을 바탕으로<br>
                    항상 새로운 가치의 서비스를 추구해 나가겠습니다.<br><br><span>대표이사 박용립</span></p>
                
            </div>
        </div>
        <div id="history">
            <div class="inner">
                <h3>연혁</h3>
                <p>다하미커뮤니케이션즈의 역사를 소개합니다.</p>
                <div class="history">
                <div class="history_box">
                    <div class="history_tit">
                        <h4>혁신기</h4>
                        <div class="box_line line1"></div>
                        <p>2012 ~ 현재</p>
                    </div>
                    <ul>
                        <li>
                            <div class="year">2016</div>
                            <div class="cont"></div>
                        </li>
                        <li>
                            <div class="year">2015</div>
                            <div class="cont">중앙일보 시사매거진 서비스 출시</div>
                        </li>
                        <li>
                            <div class="year">2014</div>
                            <div class="cont">박용립 대표이사 취임</div>
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
                    </ul>
                </div>
                <div class="history_box">
                    <div class="history_tit">
                        <h4>성장기</h4>
                        <div class="box_line line2"></div>
                        <p>2004 ~ 2011</p>
                    </div>
                    <ul>
                        <li>
                            <div class="year">2011</div>
                            <div class="cont">모바일 스크랩마스터 출시</div>
                        </li>
                        <li>
                            <div class="year">2009</div>
                            <div class="cont">터치형 T-Paper 런칭</div>
                        </li>
                        <li>
                            <div class="year">2009</div>
                            <div class="cont">온라인 뉴스 모니터링 서비스 구축</div>
                        </li>
                        <li>
                            <div class="year">2008</div>
                            <div class="cont">스크랩마스터 프리미엄 개발</div>
                        </li>
                        <li>
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
                    </ul>
                </div>
                <div class="history_box">
                    <div class="history_tit">
                        <h4>도입기</h4>
                        <div class="box_line line3"></div>
                        <p>1998 ~ 2003</p>
                    </div>
                    <ul>
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
                </div>
            </div>
        </div>
        <div id="map"><div class="map">
            <h2>오시는 길</h2>
            <p>서울시 중구 마른내로 140 5층 (쌍림동, 인쇄정보센터)<br>
                02 - 593 - 4174<br>
                <br>
                지하철 5호선 동대문역사문화공원역 6번 출구</p>
            <a href="http://map.naver.com/local/siteview.nhn?code=31139800" target="_blank">지도 보기</a></div>
    </div></div>
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
