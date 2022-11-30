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
                <h2>컴퓨터로 신문을 보며 공부해요</h2>
                <h3>e-NIE</h3>
                <p class="subtit_txt">다하미는 한국언론진흥재단과 함께 사업을 운영하고 있습니다.<br>
                    신문을 통해 인지학습 능력을 키울 수 있을 뿐 아니라 가치관 및 인성까지 발달시킬 수 있습니다.</p>
            </div>
            <a href="http://enie.forme.or.kr/" target="_blank" class="btn_bk">서비스 바로가기</a>
        </div>
    </section>
    <section class="subimg img_enie"></section>
    <section class="prod_head">
        <div class="inner">신문 기사와 구성은 학습자 특히 청소년의 인지학습능력을 키우고 <br>
            가치관 및 인성을 발달시키는 데 큰 도움이 됩니다. <br>
            현재 <b>한국언론진흥재단과 함께 신문활용교육(e-NIE) 사업 운영</b>을 하고 있습니다.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/enie1-1.png"></div>
                <div class="prod_box_txt">
                    <p>디지털 신문을 교재로 활용 </p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/enie1-2.png"></div>
                <div class="prod_box_txt">
                    <p>교육과 학습에 유용한 기능 제공</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/enie1-3.png"></div>
                <div class="prod_box_txt">
                    <p>미디어 리터러시 통합 교육</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank.html">뉴스뱅크</a></div>
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