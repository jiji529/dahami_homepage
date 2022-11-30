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
                <h2>터치스크린과 신문의 만남 </h2>
                <h3>티페이퍼</h3>
                <p class="subtit_txt">전자신문 솔루션 티페이퍼가 새로워졌습니다.<br>
어두웠던 디자인을 밝고 선명하게 하고 UI를 개선하여 신문 열람 시 몰입감과 사용성을 높였습니다.
새로 추가한 홈 화면에서는 오늘의 1면 주요기사, 현재 날씨, 추천 도서 등 다양한 콘텐츠를 더해 활용성을 높였습니다.
앞으로 추가될 더 다양한 기능과 콘텐츠를 기대해주세요.</p>
            </div>
            <a href="https://www.t-paper.co.kr/" target="_blank" class="btn_bk">홈페이지 바로가기</a>
        </div>
    </section>
    <section class="subimg img_tpaper"></section>
    <section class="prod_head">
        <div class="inner">신문은 시대를 기록하고 읽는 문화 그 자체입니다. 미디어는 공간에 대한 특별한 기억을 남깁니다. <br>
디지털 화면에서 자연스레 종이를 넘기는 듯한 경험을 공간에서 제공하세요. <br>
공간에 잘 어울리는 디자인과 설치까지 지원해드립니다.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper1-1.png"></div>
                <div class="prod_box_txt">
                    <p>당일신문 제공</p><span>매일 오전 자동 업데이트</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper1-2.gif"></div>
                <div class="prod_box_txt">
                    <p>편리한 UI</p><span> 실제 신문을 보는 듯한 직관성 구현</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper1-3.gif"></div>
                <div class="prod_box_txt">
                    <p>다양한 기능</p><span>기사확대, 검색 및 1면 주요기사</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner">도서관, 공공건물, 회사 등 로비에서 
<b>홍보효과</b>를 경험할 수 있습니다</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper2-1.png"></div>
                <div class="prod_box_txt">
                    <p>고화질 홍보영상</p>
                    <span>고화질 홍보영상과 티커가 홈 화면에서 노출되어 홍보효과를 높입니다. 대기화면의 다양한 옵션을 통해
이용기관이 원하는 동영상, 이미지 또는 지면을 보여줄 수 있습니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper2-2.png"></div>
                <div class="prod_box_txt">
                    <p>맞춤형 콘텐츠</p>
                    <span>추천 도서, 지역 날씨, 정책 홍보 등 이용기관에 따라 맞춤형 콘텐츠를 제공할 수 있습니다.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper2-3.png"></div>
                <div class="prod_box_txt">
                    <p>효율적인 관리 시스템</p> <span>종이신문을 비치하고 보관하는 데 드는 노력과 공간을 절감할 뿐만 아니라 키오스크 자동실행,
이용통계를 통한 기기관리 등 효율적인 관리시스템을 제공합니다.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank.html">뉴스뱅크</a></div>
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