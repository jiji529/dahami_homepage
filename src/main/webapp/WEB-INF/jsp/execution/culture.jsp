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
    	    	<ul class="location">
			<li>
				<a href="<%=request.getContextPath()%>/index.html" class="location_list">홈</a>
			</li>
			<li>
				<span class="location_list">미디어 문화 사업</span>
			</li>
		</ul>
        <div class="inner">
            <h2>실행</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/product.html">위기관리 솔루션</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/execution/culture.html">미디어 문화 사업</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/partner.html">파트너쉽</a></div>
            </div>
            <div class="subtit_tit row">
                <h3 class="col4">생활에서 느끼는 미디어 문화</h3>
                <p class="subtit_txt col7">디지털 시대에 중요한 읽기문화의 보급, 신문활용교육 등 <br>미디어를 활용한 문화 사업을 수행하고 있습니다.<br>온라인 환경에서 뿐만 아니라 학교, 도서관, 공공시설 등 일상 공간에서 <br>미디어를 보급하는 사업을 수행하고 있습니다.</p>
            </div>
        </div>
    </section>


    <section class="sub_product">
        <div class="inner">
            <ul class="prod_li prod2">
                <li><a href="<%=request.getContextPath()%>/execution/culture_sub/tpaper.html">
                        <div class="prod_num">01</div>
                        <div class="prod_cont">
                            <div class="prod_tit">티페이퍼</div>
                            <div class="prod_subtit">키오스크 신문/잡지 솔루션 </div>
                            <div class="prod_txt">티페이퍼가 새로워졌습니다.<br>UHD와 다양한 규격의 사이즈에 대응 가능하고, 디자인과 UI를 개선하여<br>
더욱 편한 사용감을 제공합니다. 새로 추가한 홈 화면에서는 오늘의 1면 주요기사, 현재 날씨, 추천 도서 등 <br>다양한 콘텐츠를 더해 활용성을 높였습니다. 앞으로 추가될 더 다양한 기능과 콘텐츠를 기대해주세요.</div>
                            <div class="more">자세히 보기</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank.html">
                        <div class="prod_num">02</div>
                        <div class="prod_cont">
                            <div class="prod_tit">뉴스뱅크</div>
                            <div class="prod_subtit">대한민국 보도사진 박물관 </div>
                            <div class="prod_txt">뉴스뱅크는 25개 언론사의 보도사진 650만 컷 이상을 보유하고 있는 국내 최대의 보도사진 통합 라이브러리입니다.<br>신미양요, 병인양요의 19세기 사진을 비롯해 일제 강점기를 지나 6.25 전쟁을 거치고 <br>산업화와 민주화 시대를 거쳐 오늘에 이르기까지<br>대한민국 근현대사의 중요 장면이 생생한 보도사진으로 기록되어 남아 있습니다.</div>
                            <div class="more">자세히 보기</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
				<%-- <li><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank_nyt.html">
                        <div class="prod_num">03</div>
                        <div class="prod_cont">
                            <div class="prod_tit">뉴욕타임스 X 뉴스뱅크</div>
                            <div class="prod_subtit">세상의 모든 순간을, 뉴스뱅크에서 </div>
                            <div class="prod_txt">1851년 창간한 뉴욕타임스의 수많은 보도사진을 보유하며,
매일 200여 건 이상의 새로운 사진이 업데이트 됩니다.<br>
20세기 역사적 사건부터 최신 뉴스까지 중요한 순간들을 담으며
연구, 교육, 보도 등 다양한 분야에 활용이 가능합니다.</div>
                            <div class="more">자세히 보기</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>    --%>             
                <li><a href="<%=request.getContextPath()%>/execution/culture_sub/enie.html">
                        <div class="prod_num">03</div>
                        <div class="prod_cont">
                            <div class="prod_tit">e-NIE</div>
                            <div class="prod_subtit">컴퓨터로 신문을 보며 공부해요</div>
                            <div class="prod_txt">다하미는 한국언론진흥재단과 함께 사업을 운영하고 있습니다.<br>신문활용교육(e-NIE)은 한국언론진흥재단이 운영하는 포미(forme.or.kr)를 통해 제공되며, <br>당사는 각급 학교 등에 보급하는 사업을 진행하고 있습니다. <br>종이신문을 그대로 컴퓨터로 옮겨 <br>인터넷이 접속되는 곳에서는 언제 어디서든 편리하게 신문을 스크랩하여 교육에 활용할 수 있습니다. <br>발행되는 신문이 제공되므로 학생들이 유해한 콘텐츠에 노출될 염려가 없습니다.</div>
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