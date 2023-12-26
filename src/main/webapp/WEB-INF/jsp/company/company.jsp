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
				<span class="location_list">회사소개</span>
			</li>
		</ul>
        <div class="inner">
            <h2>회사</h2>
            <div class="tab">
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/company/company.html">회사소개</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/recruit.html">채용</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/faq.html">자주 묻는 질문</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/qna.html">문의하기</a></div>
            </div>
            <div class="subtit_tit row">
                <h3 class="col4">미디어를 가장 잘 아는<br>
                    위기관리 파트너</h3>
                <p class="subtit_txt col7">다하미커뮤니케이션즈는 1998년에 창립이래 조직의 홍보, 마케팅, 전략결정 등에 필요한 <br>뉴스 콘텐츠와 미디어 정보 솔루션을 제공하는 IT 기업입니다. <br><br>최고의 미디어 정보 전문가들이 고객 맞춤형으로 정보를 넘어 지식을 제공합니다.<br><br>미디어 환경의 변화에 따라 신문, 방송, 잡지, 보도사진, 온라인 뉴스 등 <br>
미디어 콘텐츠 확장과 서비스의 혁신을 추구하고 있습니다.</p>
            </div>
        </div>
    </section>
    <section class="sub_company1">
        <div class="inner">
            <div class="sub_tit">비전</div>
            <h2 class="reveal">미디어 콘텐츠 유통, <br>정보화, 지식화 역량을 보유한 <br>탑티어 기업을 추구합니다.</h2>
        </div>
    </section>

    <section class="sub_company2 reveal">
        <div class="inner">
            <h2 class="sub_tit">기업 현황</h2>
            <p class="sub_txt">국내 대다수 언론사와 정부부처 및 지방자치단체, 공기업/공공기관은 물론<br>
                유수의 대기업 및 중견기업 등 1,000여 고객사와 함께하고 있습니다.<br>
                이제 다하미커뮤니케이션즈의 고객은 뉴스를 모니터링하는 홍보부서를 넘어<br>
                디지털미디어 콘텐츠를 활용하고자 하는 다양한 분야의 고객 층으로 확대되고 있습니다.</p>
            <ul class="comp_present">
                <li>
                    <img src="<%=request.getContextPath()%>/images/company1.png" alt="설립일 상단이미지">
                    <div class="comp_tit">설립일</div>
                    <div class="comp_txt">1998년 5월</div>
                </li>
                <li>
                    <img src="<%=request.getContextPath()%>/images/company2.png" alt="본사소재 상단이미지">
                    <div class="comp_tit">본사소재</div>
                    <div class="comp_txt">서울특별시 중구<br>마른내로 140</div>
                </li>
                <li>
                    <img src="<%=request.getContextPath()%>/images/company3.png" alt="임직원 상단이미지">
                    <div class="comp_tit">임직원</div>
                    <div class="comp_txt">98명</div>
                </li>
                <li>
                    <img src="<%=request.getContextPath()%>/images/company4.png" alt="매출액 상단이미지">
                    <div class="comp_tit">매출액</div>
                    <div class="comp_txt">210억</div>
                </li>
                <li>
                    <img src="<%=request.getContextPath()%>/images/company5.png" alt="언론 모니터링 상단이미지">
                    <div class="comp_tit">언론 모니터링</div>
                    <div class="comp_txt">업계 1위</div>
                </li>
                <li>
                    <img src="<%=request.getContextPath()%>/images/company6.png" alt="미디어 연구 개발 상단이미지">
                    <div class="comp_tit">미디어 연구 개발 </div>
                    <div class="comp_txt">24년</div>
                </li>
                <li>
                    <img src="<%=request.getContextPath()%>/images/company7.png" alt="매체 및 고객 파트너 상단이미지">
                    <div class="comp_tit">매체 및 고객 파트너</div>
                    <div class="comp_txt">1.7천여개</div>
                </li>
                <li>
                    <img src="<%=request.getContextPath()%>/images/company8.png" alt="콘텐츠 보유 상단이미지">
                    <div class="comp_tit">콘텐츠 보유</div>
                    <div class="comp_txt">4.9억여개</div>
                </li>
            </ul>
        </div>
    </section>
    <section class="sub_company3 reveal">
        <div class="inner">
            <h2 class="sub_tit">연혁</h2>
            <p class="sub_txt">다하미커뮤니케이션즈는 뉴스 콘텐츠 시장 확대를 위해 노력해 왔습니다.</p>
            <div class="history">
                <div class="hst_lt">
                    <ul>
                        <li class="active" id="after2018">
                            <p class="hst_grp_tit">혁신기</p>                            
                            <p><span>현재</span>
                                <span>~</span>
                                <span>2018</span></p>
                        </li>
                        <li class="" id="after2008">
                            <p class="hst_grp_tit">성장기</p>
                            <p><span>2017</span>
                                <span>~</span>
                                <span>2008</span></p>
                        </li>
                        <li class="" id="after1998">
                            <p class="hst_grp_tit">도입기</p>
                            <p><span>2007</span>
                                <span>~</span>
                                <span>1998</span></p>
                        </li>
                    </ul>
                </div>
                <div class="hst_rt">
                    <ul id="hst1">
                    	<li><span class="hst_num">2023</span><span class="hst_desc">AI 학습을 위한 뉴스 데이터 공급 서비스 NDPT 런칭</span></li>
                    	<li><span class="hst_num">2023</span><span class="hst_desc">보도자료 실적 집계 솔루션 PRKKOK 런칭</span></li>
                        <li><span class="hst_num">2022</span><span class="hst_desc">7년연속 청년친화강소기업 선정</span></li>
                        <li><span class="hst_num">2020</span><span class="hst_desc">T-Paper v5.0 GS인증 획득</span></li>
                        <li><span class="hst_num">2020</span><span class="hst_desc">(주)액션파워와 인공지능 분야 MOU 체결</span></li>
                        <li><span class="hst_num">2020</span><span class="hst_desc">데이터바우처 지원사업 판매기업 선정</span></li>
                        <li><span class="hst_num">2020</span><span class="hst_desc">국민대학교 차세대 정보컴퓨팅 기술개발 사업 MOU체결</span></li>
                        <li><span class="hst_num">2019</span><span class="hst_desc">한화시스템 주식회사와 디지털미디어 콘텐츠분야 AI사업협력 MOU체결</span></li>
                        <li><span class="hst_num">2018</span><span class="hst_desc">카이스트 양방향 T-PAPER 런칭</span></li>
                    </ul>
                    <ul id="hst2">
                        <li><span class="hst_num">2017</span><span class="hst_desc">클리핑온 플러스 서비스 확대</span></li>
                        <li><span class="hst_num">2016</span><span class="hst_desc">스크랩마스터 GS인증 획득</span></li>
                        <li><span class="hst_num">2016</span><span class="hst_desc">뉴스뱅크 서비스 사업 양수</span></li>
                        <li><span class="hst_num">2015</span><span class="hst_desc">중앙일보 시사매거진 서비스 출시</span></li>
                        <li><span class="hst_num">2014</span><span class="hst_desc">디지털초판 서비스 출시</span></li>
                        <li><span class="hst_num">2013</span><span class="hst_desc">클리핑온 출시</span></li>
                        <li><span class="hst_num">2013</span><span class="hst_desc">한국언론진흥재단 e-NIE 개발</span></li>
                        <li><span class="hst_num">2012</span><span class="hst_desc">T-Paper GS인증 획득</span></li>
                        <li><span class="hst_num">2011</span><span class="hst_desc">모바일 스크랩마스터 출시</span></li>
                        <li><span class="hst_num">2009</span><span class="hst_desc">터치형 T-Paper 런칭</span></li>
                        <li><span class="hst_num">2008</span><span class="hst_desc">스크랩마스터 프리미엄 개발</span></li>
                    </ul>
                    <ul id="hst3">
                        <li><span class="hst_num">2007</span><span class="hst_desc">중소기업청 INNO-BIZ 선정</span></li>
                        <li><span class="hst_num">2007</span><span class="hst_desc">T-Paper 시스템 개발</span></li>
                        <li><span class="hst_num">2005</span><span class="hst_desc">신문활용교육(NIE) 서비스 시작</span></li>
                        <li><span class="hst_num">2004</span><span class="hst_desc">스크랩마스터 런칭</span></li>
                        <li><span class="hst_num">2003</span><span class="hst_desc">스크랩마스터 개발</span></li>
                        <li><span class="hst_num">2002</span><span class="hst_desc">멀티 키오스크 시스템 개발</span></li>
                        <li><span class="hst_num">2001</span><span class="hst_desc">3D 웹 브라우저 개발</span></li>
                        <li><span class="hst_num">2000</span><span class="hst_desc">벤처기업 인증 획득</span></li>
                        <li><span class="hst_num">1998</span><span class="hst_desc">회사 창립</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="sub_company4 reveal">
        <div class="inner">
            <h2 class="sub_tit">특허</h2>
            <p class="sub_txt">다하미커뮤니케이션즈는 다양한 특허를 보유한 전문적인 회사입니다.</p>
            <div class="patent">
                <ul>
                	<li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020060093266</div>
                        <div class="pat_txt">통신망을 통해 제공되는 매스미디어 정보에 대한 고객열람현황 분석정보 서비스 방법 및 그에 따른 분석정보서비스 장치</div>
                    </li>
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020100033972</div>
                        <div class="pat_txt">저작권 보호 기반의 디지털 사진 유통시스템 및 방법</div>
                    </li>
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020120063704</div>
                        <div class="pat_txt">인쇄매체에 인쇄된 문서를 스캔하는 펜형 디지털 스캐너를 이용한 인쇄매체 스크랩 서비스 시스템 및 인쇄매체 스크랩 서비스 제공방법</div>
                    </li>
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020120097734</div>
                        <div class="pat_txt">청력테스트 결과에 따른 난청 보정 서비스 방법 및 그 장치</div>
                    </li>
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020120139940</div>
                        <div class="pat_txt">이어마이크셋 기반의 오디오신호 증폭 출력 자동전환 방법 및 이를 위한 컴퓨터로 판독가능한 기록매체</div>
                    </li>
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020130047341</div>
                        <div class="pat_txt">음향패턴을 이용하여 휴대형 단말기용 이어폰 인식하는 음향처리 시스템, 음향패턴을 이용한 휴대형 단말기용 이어폰 인식방법 및 이를 이용한 입력음향 처리 방법</div>
                    </li>
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020130120174</div>
                        <div class="pat_txt">사용자 동작 인식에 기초한 디지털 인쇄매체의 스크랩 처리 장치 및 그 방법</div>
                    </li>
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020130124216</div>
                        <div class="pat_txt">매체 이미지의 테두리 자동 검출 방법, 이를 이용한 매체 이미지 처리 시스템 및 처리 방법</div>
                    </li>                                       
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020140056623</div>
                        <div class="pat_txt">인쇄매체에 인쇄된 문서를 스캔하는 펜형 디지털 스캐너를 이용한 인쇄매체 스크랩 서비스 시스템 및 인쇄매체 스크랩 서비스 제공방법</div>
                    </li>                                        
                    <li>
                        <div class="pat_tit">출원번호</div>
                        <div class="pat_num">1020200103497</div>
                        <div class="pat_txt">뉴스 스크랩을 위한 추천 키워드 제공 시스템, 이를 이용한 뉴스 스크랩에 사용되는 키워드 사전 구성 및 업데이트 방법, 및 이를 포함하는 추천 키워드 제공방법</div>
                    </li>
                    
                </ul>
            </div>
        </div>
    </section>

    <section class="sub_company5 reveal">
        <div class="inner">
            <h2 class="sub_tit">오시는 길</h2>
            <p class="sub_txt">(주)다하미커뮤니케이션즈<br>
                서울시 중구 마른내로 140, 5층 (쌍림동, 인쇄정보센터)<br><br>

                Tel. 02 593 4174<br>
                Mail. helpdesk@dahami.com</p>
            <div class="map">
                <div style="font:normal normal 400 12px/normal dotum, sans-serif; color:#333; position:relative">
                	<div id="map" style="width:100%; height:428px;"></div>
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
                const observer = new IntersectionObserver((e) => {
            e.forEach(function(element) {
                if (element.isIntersecting) {
                    var year = parseInt(element.target.innerHTML);
                    if(year >= 2018) {
                        document.getElementById('after2018').className = "active";
                        document.getElementById('after2008').className = "";
                        document.getElementById('after1998').className = "";
                    } else if(year >= 2008) {
                        document.getElementById('after2018').className = "";
                        document.getElementById('after2008').className = "active";
                        document.getElementById('after1998').className = "";
                    } else {
                        document.getElementById('after2018').className = "";
                        document.getElementById('after2008').className = "";
                        document.getElementById('after1998').className = "active";
                    }
                }
            })
        });

        var div = document.querySelectorAll("span.hst_num");
        div.forEach(function(element) {
            observer.observe(element);
        })
    </script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eb40819794cf812aebffe77690d02fbd"></script>
	<script>
		var Latitude = 37.56450601381505;
		var longitude = 127.00357105178638;
	    var container = document.getElementById('map');
	    var options = {
	        center: new kakao.maps.LatLng(Latitude, longitude),
	        level: 3
	    };
	
	    var map = new kakao.maps.Map(container, options);
	
	    // 마커가 표시될 위치입니다 
	    var markerPosition = new kakao.maps.LatLng(Latitude, longitude);
	
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        position: markerPosition
	    });
	
	    // 마커가 지도 위에 표시되도록 설정합니다
	    marker.setMap(map);
	
	    var iwContent = '<div style="padding:5px;">(주)다하미커뮤니케이션즈 <br><a href="https://map.kakao.com/link/map/(주)다하미커뮤니케이션즈,'+Latitude+','+longitude+'" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/(주)다하미커뮤니케이션즈,'+Latitude+','+longitude+'" style="color:blue" target="_blank">길찾기</a></div>', 
	    // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(Latitude, longitude); //인포윈도우 표시 위치입니다
	
	    // 인포윈도우를 생성합니다
	    var infowindow = new kakao.maps.InfoWindow({
	        position: iwPosition,
	        content: iwContent
	    });
	
	    // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	    infowindow.open(map, marker);
	
	    // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	    var mapTypeControl = new kakao.maps.MapTypeControl();
	
	    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	
	    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	    var zoomControl = new kakao.maps.ZoomControl();
	    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	</script>       
</html>