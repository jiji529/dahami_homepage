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
        <div class="inner">
            <div>
                <h2>전문가의 맞춤형 상담과 서비스</h2>
                <h3>위기관리 전문가 서비스</h3>
                            </div>
        </div>
    </section>
    <section class="subimg img_expert"></section>
    <section class="prod_head">
        <div class="inner">경험이 풍부한 미디어 <b>위기관리 전문가</b>가 고객과 상담 후 가장 적합한 서비스를 제안합니다.
고품질의 신뢰도 높은 <b>미디어 인사이트</b>를 만나보세요.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-1.png"></div>
                <div class="prod_box_txt">
                    <p>뉴스 스크랩, 미디어 모니터링</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-2.png"></div>
                <div class="prod_box_txt">
                    <p>미디어 리뷰 및 분석</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-3.png"></div>
                <div class="prod_box_txt">
                    <p>이슈 트래킹 및 심층 리포트</p>
                </div>
            </div><div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-4.png"></div>
                <div class="prod_box_txt">
                    <p>여론 분석과 대응</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-5.png"></div>
                <div class="prod_box_txt">
                    <p>고객 맞춤형 미디어 선정</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-6.png"></div>
                <div class="prod_box_txt">
                    <p>홍보, 마케팅, 전략 등 실무에 활용</p>
                </div>
            </div>
        </div>
    
    </section>
    <section class="prod_btn">
            <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/product_sub/newsplaza.html">뉴스플라자</a></div>
            <div class="prod_btn_right"></div>
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