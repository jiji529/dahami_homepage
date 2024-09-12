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
				<span class="location_list">뉴욕타임스 X 뉴스뱅크</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>세상의 모든 순간을, 뉴스뱅크에서 </h2>
                <h3>뉴욕타임스 X 뉴스뱅크</h3>
                <p class="subtit_txt">국내 최대의 보도사진 통합 라이브러리 뉴스뱅크, 
미국 3대 일간지 뉴욕타임스와 제휴로 <br>
세계적인 보도사진을 한국에서 직접 구매할 수 있습니다.</p>
            </div>
            <a href="https://www.providers-nyt.newsbank.co.kr/" target="_blank" class="btn_bk">홈페이지 바로가기</a>
        </div>
    </section>
    <section class="subimg img_nyt"></section>
    <section class="prod_head">
        <div class="inner">1851년 창간한 <b>뉴욕타임스</b>의 수많은 보도사진을 보유하며, <br>
매일 200여 건 이상의 새로운 사진이 업데이트 됩니다. <br>
            <b>20세기 역사적 사건부터 최신 뉴스까지</b> 중요한 순간들을 담으며  <br>
연구, 교육, 보도 등 다양한 분야에 활용이 가능합니다.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/nyt1-1.png"></div>
                <div class="prod_box_txt">
                    <p>필요한 사진을 쉽고 빠르게</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/nyt1-2.png"></div>
                <div class="prod_box_txt">
                    <p>매일 200여건 이상의 <br>새로운 사진 업데이트</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/nyt1-3.png"></div>
                <div class="prod_box_txt">
                    <p>끊임없이 진화하는 아카이브</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
        	<div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank.html">뉴스뱅크</a></div>
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