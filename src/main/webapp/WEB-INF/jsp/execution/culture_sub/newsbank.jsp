<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<jsp:include page="../../common/head_meta.jsp"/>
</head>

<body>
    <jsp:include page="../../common/header.jsp"/>

    <section class="subpg_tit">
    	<ul class="location">
			<li>
				<a href="<%=request.getContextPath()%>/index.html" class="location_list">홈</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/execution/culture.html" class="location_list">미디어 문화 사업</a>
			</li>
			<li>
				<span class="location_list">뉴스뱅크</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>대한민국 보도사진 박물관 </h2>
                <h3>뉴스뱅크</h3>
                <p class="subtit_txt">뉴스뱅크는 25개 언론사의 보도사진 650만 컷 이상을 보유하고 있는 국내 최대의 보도사진 통합 라이브러리입니다.
신미양요, 병인양요의 19세기 사진을 비롯해 일제 강점기를 지나 6.25 전쟁을 거치고 산업화와 민주화 시대를 거쳐 오늘에 이르기까지
대한민국 근현대사의 중요 장면이 생생한 보도사진으로 기록되어 남아 있습니다.</p>
            </div>
            <a href="https://www.newsbank.co.kr/" target="_blank" class="btn_bk">홈페이지 바로가기</a>
        </div>
    </section>
    <section class="subimg img_newsbank"></section>
    <section class="prod_head">
        <div class="inner"><b>뉴스뱅크</b>는 대한민국 역사의 현장을 생생하게 담은 보도사진 박물관입니다. <br>
대한민국 격동의 근대사에서 현대사에 이르기까지 <b>수 백만 건 이상의 보도사진을 제공</b>합니다. <br>
<b>국내 유일의 언론사 보도사진 통합 라이브러리</b>로 지금도 역사를 기록하고 있습니다.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid4">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank1-1.png"></div>
                <div class="prod_box_txt">
                    <p>25개 이상의 국내 유수 
                        언론사 보도사진 제공</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank1-2.png"></div>
                <div class="prod_box_txt">
                    <p>월 평균 3만건 
                        보도사진 업데이트</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank1-3.png"></div>
                <div class="prod_box_txt">
                    <p>온라인과 오프라인에서 
                        용도별 가격체계</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank1-4.png"></div>
                <div class="prod_box_txt">
                    <p>매월 저작권자에 
                        판매 리포트</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner"><b>뉴스뱅크 사진의 고유ID는 UCI</b> (Universal Content Identifier)입니다.<br>
UCI는 식별이 가능한 디지털 콘텐츠에 <b>유일하고 영구한 코드를 부여</b>하고 관리해주는 체계입니다.</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank2-1.png"></div>
                <div class="prod_box_txt">
                    <p>국가표준식별체계(UCI) 등록기관</p>
                    <span>다하미는 UCI 총괄기구인 한국저작권위원회에 의해 2016년 언론사 보도사진 분야의 UCI 등록관리기관으로 지정되었습니다.
등록관리기관은 디지털 콘텐츠 등록자로부터 콘텐츠에 대한 식별정보를 등록 받고, 해당 콘텐츠에 UCI를 발급하는 업무를 수행하는 기관을 말합니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank2-2.png"></div>
                <div class="prod_box_txt">
                    <p>등록관리기관의 역할</p>
                    <span>등록자 승인, 등록자 코드발급 등 등록자 관리
메타데이터의 등록, 식별자 발급 및 유지 관리
식별메타데이터의 총괄기구로의 전송
식별자와 함께 관리되는 URL(Uniform Resource Locator) 정보의 유효성 확인
총괄시스템과의 연계, 응용서비스 개발 및 서비스</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank2-3.png"></div>
                <div class="prod_box_txt">
                    <p>디지털 콘텐츠 유통을 원활하게</p> <span>UCI는 디지털 콘텐츠에 유일한 코드를 부여하는 국가표준 식별체계로, 식별 범위는 국내 지역에 한정되지 않고 전 세계적입니다.
 UCI는 자원의 유통 기반 역할을 수행하게 되며
유통내역 추적, 거래인증, 참조연계서비스 등 온라인과 오프라인 구분 없이 실질적인 활용분야에 다양하게 적용됩니다.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/culture_sub/tpaper.html">티페이퍼</a></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/culture_sub/enie.html">e-NIE</a></div>
        </div>
    </section>
    <jsp:include page="../../common/footer.jsp"/>

</body>

    <script>
        var container = document.querySelector('.gnb');
        container.addEventListener('mouseenter', function() {
            this.classList.add('on');
        })
        container.addEventListener('mouseleave', function() {
            this.classList.remove('on');
        })
    </script>
</html>