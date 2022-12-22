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
				<span class="location_list">스크랩마스터</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>세계 최초의 신문 스크랩 프로그램</h2>
                <h3>스크랩마스터</h3>
                <p class="subtit_txt">다하미는 매일 스크랩마스터를 통해 380여개의 종이신문을 신속, 정확하게 제공해 드립니다.<br>
                    한국언론진흥재단 뉴스 저작권 사업단 [뉴스코리아]의 공식 유통사로서 중앙부처, 지방자치단체, 공기업/공공기관, 일반기업 등 국내를 대표하는 1000여 고객사가 선택한 스크랩마스터는 홍보업무 효율화를 위한 선택이 아닌 필수입니다. </p>
            </div>
            <a href="https://www.scrapmaster.co.kr/" target="_blank" class="btn_bk">홈페이지 바로가기</a>
        </div>
    </section>
    <section class="subimg img_scrapmaster"></section>
    <section class="prod_head">
        <div class="inner">세계 최초의 신문 스크랩 프로그램인 <b>스크랩마스터</b>는
            홍보, 전략, 마케팅, 지원 등 각 분야 전문가들이 검증하고 신뢰하는 <b>최고의 미디어 솔루션</b>입니다.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid4">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster1-1.png"></div>
                <div class="prod_box_txt">
                    <p>쉽고 직관적인 사용자 환경</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster1-2.png"></div>
                <div class="prod_box_txt">
                    <p>저작권 보호</p><span>한국언론진흥재단,
                        수백 곳 이상의 언론사 계약</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster1-3.png"></div>
                <div class="prod_box_txt">
                    <p>1,000여개 이상의 고객사 이용</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster1-4.png"></div>
                <div class="prod_box_txt">
                    <p>매일 380종 이상의
                        신문 콘텐츠 제공</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner">스크랩마스터는 고객의 <b>이용목적, 범위나 방식</b>에
            <b>적합한 서비스</b>를 제안합니다.</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster2-1.png"></div>
                <div class="prod_box_txt">
                    <p>스크랩마스터 프리미엄</p>
                    <span>보도된 뉴스의 검색으로부터 2차 활용까지
                        한 번에 해결할 수 있습니다.
                        뉴스 가치평가 및 통계는 물론 스크랩 뉴스의 데이터베이스 구축이 가능합니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster2-2.png"></div>
                <div class="prod_box_txt">
                    <p>스크랩마스터 모바일 +</p>
                    <span>언제 어디서든 모바일 단말기를 통해
                        기사를 확인할 수 있습니다.
                        자동검색, 지면검색과 스크랩 등
                        기사의 공유가 편리한 모바일 앱입니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster2-3.png"></div>
                <div class="prod_box_txt">
                    <p>뉴스 스크랩 대행</p> <span>이른 새벽 과중한 스크랩 업무에서
                        벗어나세요!
                        신속, 정확한 업무 대행을 위해
                        분야별 전문가가 대기하고 있습니다.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/product_sub/clippingon.html">클리핑온</a></div>
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