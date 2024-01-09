<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<jsp:include page="../common/head_meta.jsp"/>
</head>

<body>
    <jsp:include page="../common/header.jsp"/>

    <section class="subpg_tit">
        <div class="inner">
            <div>
                <h2>News Data for Pre-Training</h2>
                <h3>NDPT</h3>
                <p class="subtit_txt">Ai의 기술력을 결정짓는 것은 데이터입니다.<br>
                    요구사항 정의부터 인공지능 학습용 데이터 구축, 합법적인 이용 저작권이 확보된 양질의 뉴스 데이터 제공으로 인공지능 개발의 처음부터 끝까지 함께 하겠습니다.</p>
            </div>
            <a href="https://ndpt.dahami.com/" target="_blank" class="btn_bk">홈페이지 바로가기</a>
        </div>
    </section>

    <section class="sub_ndpt">
        <div class="inner">
            <div class="sub_tit">AI 학습을 위한<br>
                뉴스 데이터 공급 서비스</div>
            <div class="sub_txt"><br>양질의 뉴스 데이터를 저작권 문제로부터 자유롭게 공급하며,<br>
                AI 학습에 적합한 데이터 기술력을 보유한 서비스는 NDPT가 유일합니다.<br><br>
                AI의 시작, NDPT가 함께 합니다.</div>
        </div>
    </section>

    <section class="sub_tech2">
        <div class="inner">
            <img src="<%=request.getContextPath()%>/images/ndpt.png" alt="NDPT 설명" class="tech_img">
            <img src="<%=request.getContextPath()%>/images/ndptm.png" alt="NDPT 설명" class="tech_img_m">
        </div>
    </section>

    <section class="prod_head">
        <div class="inner"><b>성공적인 AI 서비스 구축을 위한 NDPT</b><br>
            NDPT는 고품질의 인공지능 학습용 뉴스 데이터를 제공합니다.</div>
    </section>

     <section class="prod_detail2 pd">
        <div class="inner grid2">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/ndpt1-1.png"></div>
                <div class="prod_box_txt">
                    <p>뉴스 데이터 국내 최대 보유</p>
                    <span>25년간 3,000여 개 이상의 국내 언론 매체의 뉴스 데이터<br>
26개 주요 언론사 80여 년간의 보도사진<br>
지상파 3사, 통신사, 종편 등 다수의 방송사 뉴스 데이터</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/ndpt1-2.png"></div>
                <div class="prod_box_txt">
                    <p>한방에! 저작권 해결</p>
                    <span>한국언론진흥재단의 공식 유통사로서 25년간의 뉴스 저작권 사업으로 확보된 합법적 뉴스 데이터</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/ndpt1-3.png"></div>
                <div class="prod_box_txt">
                    <p>다양한 형태의 뉴스 데이터 보유</p>
                    <span>텍스트 형태의 지면/온라인 기사,
보도사진 이미지, 방송 뉴스 동영상 데이터 보유</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/ndpt1-4.png"></div>
                <div class="prod_box_txt">
                    <p>AI 학습에 최적화된 데이터 제공</p>
                    <span>대형 언어 모델(LLM) 및 대형 다중유형 모델(LMM) 구축에
적합하게 가공된 맞춤형 뉴스 데이터 제공</span>
                </div>
            </div>
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