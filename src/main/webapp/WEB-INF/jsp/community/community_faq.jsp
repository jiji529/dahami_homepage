<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>다하미커뮤니케이션즈</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>
<jsp:include page="../common/google_analytics.jsp"></jsp:include>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.twbsPagination.js"></script>
<script type="text/javascript">
function evt(newwin){
var objid=document.getElementById(newwin);
if(objid.style.display=="block")
  {
  objid.style.display="none";
  }
else{
  objid.style.display="block";
  }
}
</script>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<div id="wrap">
    <div id="gnb">
        <h1><a href="main.html">logo</a></h1>
        <ul class="gnb_menu">
            <li class="menu">
                <dl class="gnb_dl">
                    <dt><a href="company.html">회사소개</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="company.html#intro" target="_parent">다하미 소개</a></li>
                            <li><a href="company.html#history" target="_parent">연혁</a></li>
                            <li><a href="company.html#map" target="_parent">오시는 길</a></li>
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
                    <dt class="on"><a href="community.html">커뮤니티</a></dt>
                    <dd class="">
                        <ul class="navi_sub_ul">
                            <li><a href="community.html" target="_parent">새소식</a></li>
                            <li><a href="community.html#faq" target="_parent">자주 묻는 질문</a></li>
                            <li><a href="community.html#call" target="_parent">문의하기</a></li>
                        </ul>
                    </dd>
                </dl>
            </li>
        </ul>
        <div class="navi_layer" style="height: 220px;"> </div>
        <div class="callcenter"><a href="community.html#call" target="_parent">고객센터</a></div>
    </div>
    <div class="contents">
        <div class="sub_top sub_img4">
            <h2>커뮤니티</h2>
            <p>다하미커뮤니케이션즈의 새로운 소식을 확인하세요.</p>
        </div>
        <div class="sub_navi">
            <ul class="sub_navi_li">
                <li class="on"><a href="#new">새소식</a></li>
                <li><a href="#faq">자주 묻는 질문</a></li>
                <li><a href="#call">문의하기</a></li>
            </ul>
        </div>
        <div id="new">
            <div class="new">
                <div class="inner">
                    <h3>새소식</h3>
                    <p>다하미커뮤니케이션즈를 소개합니다.</p>
                </div>
                <div class="search">
                    <input type="text" name="searchInput" value="">
                    <a href="#">검색</a> </div>
                <dl>
                    <dt><a onClick="evt('0')"><span class="new_tit">(주)다하미커뮤니케이션즈, 2016년 청년 친화 강소기업 선정</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="0" style="display: none;"> </dd>
                    <dt><a onClick="evt('2')"><span class="new_tit">(주)다하미커뮤니케이션즈, 언론 통합 보도사진 서비스 '뉴스뱅크' 사업 양수</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="2">
                        <p class="new_contit">(주)다하미커뮤니케이션즈, 언론 통합 보도사진 서비스 '뉴스뱅크' 사업 양수</p>
                    </dd>
                    <dt><a onClick="evt('3')"><span class="new_tit"> (주)다하미커뮤니케이션즈, 이데일리 디지털초판 '이퍼스트(eFIRST)' 출시</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="3">
                        <p class="new_contit">(주)다하미커뮤니케이션즈, 이데일리 디지털초판 '이퍼스트(eFIRST)' 출시</p>
                    </dd>
                    <dt><a onClick="evt('4')"><span class="new_tit">(주)다하미커뮤니케이션즈, 이데일리 디지털초판 '이퍼스트(eFIRST)' 출시</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="4">
                        <p class="new_contit">((주)다하미커뮤니케이션즈, 이데일리 디지털초판 '이퍼스트(eFIRST)' 출시</p>
                    </dd>
                    <dt><a onClick="evt('5')"><span class="new_tit">실시간 뉴스클리핑에 SNS분석까지… ‘스크랩마스터5’ 출시</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="5">
                        <p class="new_contit">실시간 뉴스클리핑에 SNS분석까지… ‘스크랩마스터5’ 출시</p>
                    </dd>
                    <dt><a onClick="evt('6')"><span class="new_tit">[Interview] the Leader 지역리더에게 듣는다_박용립 ㈜다하미커뮤니케이션즈 대표</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="6">
                        <p class="new_contit">[Interview] the Leader 지역리더에게 듣는다_박용립 ㈜다하미커뮤니케이션즈 대표</p>
                    </dd>
                    <dt><a onClick="evt('7')"><span class="new_tit">자유학기제를 위한 진로체험학습 실시</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="7">
                        <p class="new_contit">자유학기제를 위한 진로체험학습 실시</p>
                    </dd>
                    <dt><a onClick="evt('8')"><span class="new_tit">닛케이BP 무크지 한글독점번역판 '알기 쉬운 4차 산업혁명' 출간</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="8">
                        <p class="new_contit">닛케이BP 무크지 한글독점번역판 '알기 쉬운 4차 산업혁명' 출간</p>
                    </dd>
                    <dt><a onClick="evt('9')"><span class="new_tit">㈜다하미커뮤니케이션즈, 한국일보 디지털초판 서비스 출시</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="9">
                        <p class="new_contit">㈜다하미커뮤니케이션즈, 한국일보 디지털초판 서비스 출시</p>
                    </dd>
                    <dt><a onClick="evt('10')"><span class="new_tit">㈜다하미커뮤니케이션즈, 한겨레 디지털초판 서비스 출시</span><span class="new_date">2016-05-25</span><span class="new_ico"></span></a></dt>
                    <dd id="10">
                        <p class="new_contit">㈜다하미커뮤니케이션즈, 한겨레 디지털초판 서비스 출시</p>
                    </dd>
                </dl>
                <div class="paging">
                    <ul>
                        <li class="first"> <a href="#">첫 페이지</a> </li>
                        <li class="prev"> <a href="#">이전 페이지</a> </li>
                        <li> <a href="#">1</a> </li>
                        <li class="active"> <a href="#">2</a> </li>
                        <li> <a href="#">3</a> </li>
                        <li> <a href="#">4</a> </li>
                        <li> <a href="#">5</a> </li>
                        <li> <a href="#">6</a> </li>
                        <li> <a href="#">7</a> </li>
                        <li> <a href="#">8</a> </li>
                        <li> <a href="#">9</a> </li>
                        <li> <a href="#">10</a> </li>
                        <li class="next"> <a href="#"> 다음 페이지 </a> </li>
                        <li class="last"> <a href="#"> 마지막 페이지 </a> </li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="faq">
            <div class="faq">
                <div class="inner">
                    <h3>자주 묻는 질문</h3>
                    <p>다하미커뮤니케이션즈의서비스에 대해 자주 묻는 질문들 입니다. <br />
                        궁금하신 사항을 선택 해 주세요.</p>
                </div>
                <div class="search">
                    <input type="text" name="searchInput" value="">
                    <a href="#">검색</a> </div>
                <dl>
                    <dt id="dt0" style="cursor: pointer;" onClick="evt(0,29)"><span class="faq_date">[서비스 전반]</span><span class="faq_tit">검색은 몇 회까지 가능한가요?</span><span class="faq_ico"></span></dt>
                    <dd id="0" style="display: none;">
                        <p class="faq_contit">검색은 몇 회까지 가능한가요?<br>
                        </p>
                        <p>구독하는 신문의 검색 횟수나 검색어 변경/설정에는 제한이 없습니다.<br>
                            매일 새벽 6시 오픈 되는 당일 기사 외에 2006년부터 축적된 과거 데이터를 원하는 기간을 설정해 검색할 수 있습니다.<br>
                            스크랩마스터의 강력한 검색 기능을 제한 없이 경험해 보세요.</p>
                        <p></p>
                    </dd>
                    <dt id="dt1" style="cursor: pointer;" onClick="evt(1,28)"><span class="faq_date">[서비스 전반]</span><span class="faq_tit"> 우리 회사/기관의 기사는 많지 않은데 스크랩마스터가 필요할까요?</span><span class="faq_ico"></span></dt>
                    <dd id="1" style="display: none;">
                        <p class="faq_contit">우리 회사/기관의 기사는 많지 않은데 스크랩마스터가 필요할까요?<br>
                        </p>
                        <p>기사에는 경쟁사 및 업계 동향을 비롯해 고객의 주요 관심이 무엇인지 보여주는 중요 정보들이 담겨 있습니다.<br>
                            특히 신문은 사회의 중요한 사안을 편집해 보여주기 때문에 꾸준한 구독을 통해 경영층에 필요한 정보력을 강화할 수 있습니다.</p>
                        <p></p>
                    </dd>
                    <dt id="dt2" style="cursor: pointer;" onClick="evt(2,37)"><span class="faq_date">[저작권]</span><span class="faq_tit">스크랩마스터 계약을 하면 기사를 어디까지 사용할 수 있나요?</span><span class="faq_ico"></span></dt>
                    <dd id="2" style="display: none;">
                        <p class="faq_contit">스크랩마스터 계약을 하면 기사를 어디까지 사용할 수 있나요?<br>
                        </p>
                        <p>스크랩마스터에서 서비스하는 기사의 이용 저작권은 구독하고 계신 매체의 이용 계약 종류에 따라 다릅니다.<br>
                            기본 이용 상품의 경우 프로그램을 이용한 보기/검색/스크랩/편집/저장/인쇄를 하실 수 있으나, 기사를 공유하거나 배포하셔서는 안 됩니다.<br>
                            프리미엄 상품의 경우 종판 이용 범위에 통계 기능과 기사를 뷰어에 등록해 사내 공유하는 범위까지 이용하실 수 있습니다.<br>
                            내부 라이선스 상품은 프리미엄 이용 범위에 모바일 공유가 추가되며, 통합 라이선스 상품은 내부 라이선스 범위에 대외 발송 및 홈페이지 게재 범위가 추가됩니다.<br>
                            기사를 이용하시고자 하는 범위에 맞는 상품을 선택하시어 합리적으로 저작권 계약을 체결하시기 바랍니다.</p>
                        <p></p>
                    </dd>
                    <dt id="dt3" style="cursor: pointer;" onClick="evt(3,36)"><span class="faq_date">[저작권]</span><span class="faq_tit">신탁매체란 무엇을 뜻하나요?</span><span class="faq_ico"></span></dt>
                    <dd id="3" style="display: none;">
                        <p class="faq_contit">신탁매체란 무엇을 뜻하나요?<br>
                        </p>
                        <p>신문산업의 발전과 지원을 목적으로 설립된 공공기관인 한국언론진흥재단에 뉴스 저작권을 신탁한 매체들을 신탁매체라고 합니다.<br>
                            한국언론진흥재단에 저작권 신탁을 하지 않은 매체들을 편의상 비신탁매체라고 구분합니다.<br>
                            2016년 12월 현재 신탁 매체는 총 91개로, 자세한 매체 목록은 스크랩마스터 홈페이지 PRICE 페이지의 서비스 매체 메뉴를 참조해 주세요.</p>
                        <p></p>
                    </dd>
                    <dt id="dt4" style="cursor: pointer;" onClick="evt(4,35)" class="on"><span class="faq_date">[저작권]</span><span class="faq_tit">종판이란 어떤 신문을 말하나요?</span><span class="faq_ico"></span></dt>
                    <dd id="4" style="display: block;">
                        <p class="faq_contit">종판이란 어떤 신문을 말하나요?<br>
                        </p>
                        <p>신문은 밤새 기사 내용이 업데이트 되면서 여러판수로 인쇄가 됩니다.<br>
                            가장 마지막에 인쇄된 판수의 신문을 종판 신문이라고 하며, 각 신문사마다 종판을 의미하는 숫자는 다릅니다.<br>
                            스크랩마스터는 종판을 기준으로 서비스하고 있습니다.</p>
                        <p></p>
                    </dd>
                    <dt id="dt5" style="cursor: pointer;" onClick="evt(5,34)"><span class="faq_date">[계약]</span><span class="faq_tit">스크랩마스터를 통해 구독하고 싶은 매체가 서비스 매체에 포함되어 있지 않습니다.</span><span class="faq_ico"></span></dt>
                    <dd id="5" style="display: none;">
                        <p class="faq_contit">스크랩마스터를 통해 구독하고 싶은 매체가 서비스 매체에 포함되어 있지 않습니다.<br>
                        </p>
                        <p>스크랩마스터에서 서비스 하고 있는 매체에 구독을 원하시는 매체가 포함되어 있지 않은 경우,<br>
                            스크랩마스터 홈페이지 SUPPORT 페이지 1:1 문의하기 메뉴에서 매체 제휴 담당자에게 요청해주시면 신속히 지원해드리겠습니다.</p>
                        <p></p>
                    </dd>
                    <dt id="dt6" style="cursor: pointer;" onClick="evt(6,33)"><span class="faq_date">[계약]</span><span class="faq_tit">테스트를 신청한 이후 절차는 어떻게 되나요?</span><span class="faq_ico"></span></dt>
                    <dd id="6" style="display: none;">
                        <p class="faq_contit">테스트를 신청한 이후 절차는 어떻게 되나요?<br>
                        </p>
                        <p>스크랩마스터 홈페이지 PRODUCT 페이지 제일 하단이나, PRICE 페이지 제일 하단의 '서비스 신청하기'를 참조해 주세요.</p>
                        <p></p>
                    </dd>
                    <dt id="dt7" style="cursor: pointer;" onClick="evt(7,32)"><span class="faq_date">[서비스 전반]</span><span class="faq_tit">계약 후에 스크랩마스터 사용 방법을 배울 수 있나요?</span><span class="faq_ico"></span></dt>
                    <dd id="7" style="display: none;">
                        <p class="faq_contit">[서비스 전반] 계약 후에 스크랩마스터 사용 방법을 배울 수 있나요?<br>
                        </p>
                        <p>계약 진행을 담당했던 영업 사원이나 고객센터를 통해 언제든지 편하게 문의해주시면 지원해드리겠습니다.<br>
                            교육을 기다리기 어려우시면 스크랩마스터 홈페이지 SUPPORT 메뉴에서 스크랩마스터 매뉴얼을 다운로드 받아 참조하시거나, FAQ를 참조해 주세요.<br>
                            또한 간단한 기능 설명은 고객센터 또는 기술지원담당자에게 연락 주시면 친절히 안내해드리겠습니다.</p>
                        <p></p>
                    </dd>
                    <dt id="dt8" style="cursor: pointer;" onClick="evt(8,31)"><span class="faq_date">[서비스 전반] </span><span class="faq_tit">테스트를 신청할 예정인데, 검색어는 어떤 것을 사용하면 좋을까요?</span><span class="faq_ico"></span></dt>
                    <dd id="8" style="display: none;">
                        <p class="faq_contit">테스트를 신청할 예정인데, 검색어는 어떤 것을 사용하면 좋을까요?<br>
                        </p>
                        <p>검색어로는 회사명/대표자명을 비롯해, 업무에 관련이 있으신 단어들을 제한 없이 사용하실 수 있습니다.<br>
                            원하는 기사를 좀 더 빠르게 찾기 위해서는 검색 범위를 좁히는 검색어를 설정하시면 좋습니다.<br>
                            예를 들어, 음료 업계에 계신 경우 or 조건의 '음료 신제품'으로 검색하는 것보다 and 조건의 '음료 신제품' 또는 'XX회사 음료 신제품'으로 검색하시는 것을 추천해드립니다.</p>
                        <p></p>
                    </dd>
                    <dt id="dt9" style="cursor: pointer;" onClick="evt(9,30)"><span class="faq_date">[서비스 전반]</span><span class="faq_tit"> 토요일, 일요일, 공휴일에도 서비스를 이용할 수 있습니까?</span><span class="faq_ico"></span></dt>
                    <dd id="9" style="display: none;">
                        <p class="faq_contit">토요일, 일요일, 공휴일에도 서비스를 이용할 수 있습니까?<br>
                        </p>
                        <p>스크랩마스터는 설치 후 로그인 하시면 언제 어디서든 제한 없이 이용하실 수 있습니다.<br>
                            토요일, 일요일, 공휴일에도 신문이 발행되는 날은 연중무휴 매일 업데이트를 하고 있으며,<br>
                            신문이 발행되지 않는 날에도 과거 신문을 열람하거나 검색, 스크랩하실 수 있습니다.</p>
                        <p></p>
                    </dd>
                </dl>
                <div class="paging">
                    <ul>
                        <li class="first"> <a href="#">첫 페이지</a> </li>
                        <li class="prev"> <a href="#">이전 페이지</a> </li>
                        <li> <a href="#">1</a> </li>
                        <li class="active"> <a href="#">2</a> </li>
                        <li> <a href="#">3</a> </li>
                        <li> <a href="#">4</a> </li>
                        <li> <a href="#">5</a> </li>
                        <li> <a href="#">6</a> </li>
                        <li> <a href="#">7</a> </li>
                        <li> <a href="#">8</a> </li>
                        <li> <a href="#">9</a> </li>
                        <li> <a href="#">10</a> </li>
                        <li class="next"> <a href="#"> 다음 페이지 </a> </li>
                        <li class="last"> <a href="#"> 마지막 페이지 </a> </li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="call">
            <div class="call">
                <div class="inner">
                    <h3>문의하기</h3>
                    <p>질문이나 상담을 원하시면 전화 또는 메일로 문의 부탁드립니다.</p>
                </div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <th scope="col">문의사항</th>
                        <th scope="col">연락처</th>
                        <th scope="col">메일</th>
                    </tr>
                    <tr>
                        <td>질문</td>
                        <td>02-593-4174</td>
                        <td>dahami@dahami.com</td>
                    </tr>
                    <tr>
                        <td>상담</td>
                        <td>02-593-4174</td>
                        <td>admin@dahami.com</td>
                    </tr>
                </table>
                <div class="call_box">
                    <h3>개인정보 수집 및 이용동의</h3>
                    <div class="agree_box"> <strong>[개인정보 수집 등에 대한 동의]</strong><br>
                        <br>
                        <strong>1. 개인정보 수집 항목 및 목적</strong><br>
                        해당 페이지는 다하미커뮤니케이션즈 중간관리자 지원 시 문의하는 내용에 대해 문의자와의 원활한 의사소통을 위한 목적으로 아래와 같은 항목을 수집합니다.<br>
                        : 이름, 이메일 주소, 연락처<br>
                        <br>
                        <strong>3. 개인정보의 보유 및 이용기간</strong><br>
                        : 수집된 개인정보는 보유 및 이용 목적이 완료된 후 즉시 파기됩니다. 또한 ‘문의하기’를 통해 삭제 요청을 하는 경우 3일 이내 파기됩니다.<br>
                        <br>
                        ※ 귀하는 이에 대한 동의를 거부할 수 있으며, 다만 동의하지 않으실 경우 문의가 불가능 할 수 있음을 알려드립니다.<br>
                        <br>
                    </div>
                    <div class="agree_check">
                        <p>
                            <input type="checkbox">
                            <label for="agree">개인정보 수집 및 이용에 동의합니다.</label>
                        </p>
                    </div>
                    <h3>질문하기</h3>
                    <dl>
                        <dt>성명</dt>
                        <dd>
                            <input type="text"  />
                        </dd>
                        <dt>연락처</dt>
                        <dd>
                            <input type="text" class="num" />
                            <span>-</span>
                            <input type="text" class="num" />
                            <span>-</span>
                            <input type="text" class="num" />
                        </dd>
                        <dt>이메일</dt>
                        <dd>
                            <input type="text" class="mail"/>
                            <span>@</span>
                            <input type="text" class="mail"/>
                        </dd>
                        <dt>제목</dt>
                        <dd>
                            <input type="text" />
                        </dd>
                        <dt class="main_cont">질문내용</dt>
                        <dd class="main_cont">
                            <textarea></textarea>
                        </dd>
                    </dl>
                    <div class="call_send"><a href="#">등록</a></div>
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
