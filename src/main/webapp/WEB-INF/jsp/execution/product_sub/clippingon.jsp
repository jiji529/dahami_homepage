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
				<span class="location_list">클리핑온</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>실시간 방송 뉴스 모니터링 솔루션 </h2>
                <h3>클리핑온</h3>
                <p class="subtit_txt">지상파/보도전문채널/종합편성 등 국내 9개 방송사와 정식 계약을 체결해 방송뉴스 저작권 문제를 해결하였습니다.<br>
                    예상치 못한 보도에 대한 즉각적인 대응 및 위기 관리가 가능합니다.<br>
                    또한, 스크랩마스터와 연동을 통해 언론 스크랩 업무를 통합해 드립니다. </p>
            </div>
            <a href="http://www.clippingon.co.kr/" target="_blank" class="btn_bk">서비스 바로가기</a>
        </div>
    </section>
    <section class="subimg img_clippingon"></section>
    <section class="prod_head">
        <div class="inner">방송사의 영상 뉴스는 시청자들에게 직접적인 인상을 남겨 파급력이 매우 큽니다. <br>
            <b>클리핑온</b>은 주요 뉴스 시간에 <b>실시간 알림</b>으로 효율적인 위기 대응을 지원합니다.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid4">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-1.png"></div>
                <div class="prod_box_txt">
                    <p>주요 뉴스 시간대
                        실시간 알림</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-2.png"></div>
                <div class="prod_box_txt">
                    <p> 9개 방송뉴스 제공</p><span>지상파 3사, 보도전문 및 종합편성채널 등 </span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-3.png"></div>
                <div class="prod_box_txt">
                    <p>방송사 계약을 통한
                        저작권 보호</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-4.png"></div>
                <div class="prod_box_txt">
                    <p>방송 뉴스 스크랩
                        기능 지원</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner">클리핑온은 쉽게 방송뉴스를 <br>
            <b>통합, 관리할 수 있는 도구</b>를 제공합니다.</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon2-1.png"></div>
                <div class="prod_box_txt">
                    <p>뉴스 통합이용 플랫폼 서비스</p>
                    <span>원스톱으로 모든 방송사의 뉴스 검색이 가능합니다.
                        번거롭게 여러 사이트에서 검색할 필요가 없습니다.
                        오직 클리핑온 하나면 충분합니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon2-2.png"></div>
                <div class="prod_box_txt">
                    <p>자동검색/필터링</p>
                    <span>사용자가 지정한 검색 키워드로
                        방송뉴스를 자동 검색 및 필터링 하여 제공합니다.
                        수 많은 키워드를 일일히 검색하실 필요도 없습니다.
                        키워드별로 날짜/방송사/프로그램을 저장해 놓으면
                        자동으로 검색해 드립니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon2-3.png"></div>
                <div class="prod_box_txt">
                    <p>모바일 알리미 서비스</p> <span>설정해 놓은 키워드로 뉴스를
                        원하는 시간에 알려드립니다.
                        모니터링 즉시 알려주는 실시간 알림 기능으로
                        예상치 못한 보도에 대한
                        즉각적인 대응 및 위기 관리가 가능합니다.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/product_sub/scrapmaster.html">스크랩마스터</a></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/product_sub/newsplaza.html">뉴스플라자</a></div>
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