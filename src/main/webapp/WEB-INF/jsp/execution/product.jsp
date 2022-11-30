<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<jsp:include page="../common/head_meta.jsp"/>
</head>

<body>
    <jsp:include page="../common/header.jsp"/>

    <section class="sublist_area">
        <div class="inner">
            <h2>실행</h2>
            <div class="tab">
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/execution/product.html">위기관리 솔루션</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/culture.html">미디어 문화 사업</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/partner.html">파트너쉽</a></div>
            </div>
            <div class="subtit_tit row">
                <h3 class="col4">위기관리의 든든한 엔진</h3>
                <p class="subtit_txt col7">위기관리를 위한 전용 솔루션은 신문, 방송, 온라인 뉴스, SNS 등 복잡한 미디어 환경에서 통찰을 제공하는<br>
                    최적의 제품과 서비스를 제공합니다.<br>
                    경제적인 예산으로 업무를 효율적으로 수행하는 데 도움을 줍니다. </p>
            </div>
        </div>
    </section>


    <section class="sub_product">
        <div class="inner">
            <ul class="prod_li prod1">
                <li><a href="<%=request.getContextPath()%>/execution/product_sub/scrapmaster.html">
                        <div class="prod_num">01</div>
                        <div class="prod_cont">
                            <div class="prod_tit">스크랩마스터</div>
                            <div class="prod_subtit">세계 최초의 신문 스크랩 프로그램</div>
                            <div class="prod_txt">다하미는 매일 스크랩마스터를 통해 380여개의 종이신문을 신속, 정확하게 제공해 드립니다.<br>
                                한국언론진흥재단 뉴스 저작권 사업단 [뉴스코리아]의 공식 유통사로서 중앙부처, 지방자치단체, 공기업/공공기관, 일반기업 등 국내를 대표하는 1000여 고객사가 선택한 스크랩마스터는 홍보업무 효율화를 위한 선택이 아닌 필수입니다.</div>
                            <div class="more">자세히 보기</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/product_sub/clippingon.html">
                        <div class="prod_num">02</div>
                        <div class="prod_cont">
                            <div class="prod_tit">클리핑온</div>
                            <div class="prod_subtit">실시간 방송 뉴스 모니터링 솔루션 </div>
                            <div class="prod_txt">지상파/보도전문채널/종합편성 등 국내 9개 방송사와 정식 계약을 체결해 방송뉴스 저작권 문제를 해결하였습니다.
                                예상치 못한 보도에 대한 즉각적인 대응 및 위기 관리가 가능합니다.
                                또한, 스크랩마스터와 연동을 통해 언론 스크랩 업무를 통합해 드립니다.</div>
                            <div class="more">자세히 보기</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/product_sub/newsplaza.html">
                        <div class="prod_num">03</div>
                        <div class="prod_cont">
                            <div class="prod_tit">뉴스플라자</div>
                            <div class="prod_subtit">온라인 뉴스 통합이용 서비스 </div>
                            <div class="prod_txt">뉴스플라자는 한국언론진흥재단의 뉴스저작권 사업 중 하나로, 93개 언론사의 온라인 뉴스를 제공하고 있습니다.
                                다하미는 한국언론진흥재단 뉴스플라자 사업의 온라인 뉴스 원문 저작권 판매의 공식 대행사로
                                일평균 8천~1만 여건의 뉴스 기사를 데이터 원문 형태로 제공받아 고객사가 원하는 환경에 맞게 이용이 가능하도록 서비스하고 있습니다.</div>
                            <div class="more">자세히 보기</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/product_sub/expert.html">
                        <div class="prod_num">04</div>
                        <div class="prod_cont">
                            <div class="prod_tit">위기관리 전문가 서비스</div>
                            <div class="prod_subtit">전문가의 맞춤형 상담과 서비스</div>
                            <div class="prod_txt">경험이 풍부한 미디어 위기관리 전문가가 고객과 상담 후 가장 적합한 서비스를 제안합니다.
                                고품질의 신뢰도 높은 미디어 인사이트를 만나보세요.</div>
                            <div class="more">자세히 보기</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
            </ul>

        </div>





    </section>
    <jsp:include page="../common/footer.jsp"/>
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