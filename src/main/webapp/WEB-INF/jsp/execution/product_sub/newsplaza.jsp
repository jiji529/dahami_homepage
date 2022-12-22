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
				<a href="<%=request.getContextPath()%>/execution/product.html" class="location_list">위기관리 솔루션</a>
			</li>
			<li>
				<span class="location_list">뉴스플라자</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>온라인 뉴스 통합이용 서비스</h2>
                <h3>뉴스플라자</h3>
                <p class="subtit_txt">뉴스플라자는 한국언론진흥재단의 뉴스저작권 사업 중 하나로, 93개 언론사의 온라인 뉴스를 제공하고 있습니다.<br>
                    다하미는 한국언론진흥재단 뉴스플라자 사업의 온라인 뉴스 원문 저작권 판매의 공식 대행사로<br>
                    일평균 8천~1만 여건의 뉴스 기사를 데이터 원문 형태로 제공받아 고객사가 원하는 환경에 맞게 이용이 가능하도록 서비스하고 있습니다.</p>
            </div>
            <a href="http://news-plaza.com/" target="_blank" class="btn_bk">서비스 바로가기</a>
        </div>
    </section>
    <section class="subimg img_newsplaza"></section>
    <section class="prod_head">
        <div class="inner">온라인 뉴스는 신속한 정보 제공에 적합한 미디어입니다. <br>
<b>뉴스플라자</b>는 국내 주요 언론사의 <b>온라인 뉴스를 일괄 제공</b>하고 있습니다.  <br>
뉴스 모니터링 등 내부 업무뿐 아니라 <b>홍보 목적의 대외 배포에 적합한 상품</b>입니다.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza1-1.png"></div>
                <div class="prod_box_txt">
                    <p>고객 환경에 맞춤형 서비스</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza1-2.png"></div>
                <div class="prod_box_txt">
                    <p>이용 범위별 상품군 구성</p><span>키워드 상품, 통합 데이터베이스 상품 등
                        이용 범위에 따라 선택가능 </span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-3.png"></div>
                <div class="prod_box_txt">
                    <p>저작권 보호</p>
                    <span>한국언론진흥재단, 언론사 계약을 통한 저작권 보호 </span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner">뉴스플라자는 우리 조직이 <br>
            <b>미디어 내 의미를 발견</b>하는데 도움을 줍니다.</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza2-1.png"></div>
                <div class="prod_box_txt">
                    <p>다양한 용도로 활용</p>
                    <span>홈페이지 게시, 스크랩, 인트라넷 활용 등
                        온라인 뉴스를 다양한 목적에 맞게
                        간편하게 이용할 수 있습니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza2-2.png"></div>
                <div class="prod_box_txt">
                    <p>키워드 서비스</p>
                    <span>사용자가 원하는 여러 키워드를 등록하여 정책/기업/업종 등 다양한 분야의 맞춤형 뉴스를 제공합니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza2-3.png"></div>
                <div class="prod_box_txt">
                    <p>통합 서비스</p> <span>고객사 내부망에서 활용할 수 있도록
                        카테고리별로 분류된 뉴스의
                        원문 데이터를 통합하여 제공합니다.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/product_sub/clippingon.html">클리핑온</a></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/product_sub/expert.html">위기관리 전문가 서비스</a></div>
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