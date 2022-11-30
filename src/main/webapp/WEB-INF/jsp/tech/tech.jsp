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
            <h2>기술</h2>
            <div class="subtit_tit row">
                <h3 class="col4">dAIa Framework</h3>
                <p class="subtit_txt col7">dAIa는 AI기반의 빅데이터 분석 플랫폼입니다.
                    Dahami Artificial Intelligence Application Framework의 약자인 dAIa Framework에는
                    다이아몬드처럼 빛나는 보석을 빅데이터 속에서 찾아주는 플랫폼을 만들겠다는
                    다하미의 각오와 의지와 기술이 하나로 함축되어 있습니다.
                    <br>
                    <br>
                    뉴스 빅데이터 기반 인공지능 분석 플랫폼 dAIa는
                    방대한 데이터 속에 숨은 다이아몬드를 캐내는 최적의 동반자가 될 것입니다.
                    다이아몬드처럼 빛나는 업무 성과 dAIa 프레임워크가 함께합니다. </p>
            </div>
        </div>
    </section>


    <section class="sub_tech1 ">
        <div class="inner">
            <div class="sub_tit">인공지능 기반의<br>
                뉴스 빅데이터 분석 프레임웍<br>
                dAIa Framework</div>
            <div class="sub_txt"><br>자연어처리와 Ai기술을 바탕으로 <br>
                방대한 뉴스 데이터 속의 보석을 찾아주는 분석 기술입니다.</div>

        </div>
    </section>



    <section class="sub_tech2">
        <div class="inner">
            <img src="<%=request.getContextPath()%>/images/tech.png" alt="dAIa 구조도" class="tech_img">
            <img src="<%=request.getContextPath()%>/images/techm.png" alt="dAIa 구조도" class="tech_img_m">
            <ul class="tech_list">
                <li>
                    <div class="tech_name">
                        <div class="tech_num">01</div>DAA
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">Data Aggregation Agent</div>
                        <div class="tech_txt">DAA는 각종 분석에 필요한 방대한 데이터를 다양한 소스에서 확보하고 집적하는 시스템입니다.
                            방대한 비정형 데이터를 안정적으로 수집하기 위해 별도의 모니터링 시스템도 함께 운영하고 있습니다.</div>
                        <div class="tech_tag"><span>#빅데이터</span><span>#수집</span><span>#비정형데이터</span><span>#정형데이터</span><span>#소셜미디어 </span><span>#커뮤니티</span><span>#온라인뉴스</span></div>
                    </div>
                </li><li>
                    <div class="tech_name">
                        <div class="tech_num">02</div>BDR
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">Big Data Repository</div>
                        <div class="tech_txt">BDR은 빅데이터의 원활한 처리를 위해 초대용량의 저장공간을 확보하고 그 속에서 고객이 원하는 이슈를 빠르고 정확하게 꺼낼 수 있도록 구성된 시스템입니다.</div>
                        <div class="tech_tag"><span>#초고속</span><span>#대용량</span><span>#빅데이터</span></div>
                    </div>
                </li><li>
                    <div class="tech_name">
                        <div class="tech_num">03</div>NLC
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">Natural Language Core</div>
                        <div class="tech_txt">NLC는 빅데이터에 내재된 자연언어를 분석하는 시스템입니다. 자연언어의 비정형화된 구조로 인해 다양한 문제점을 AI를 활용하여 더 정확하게 분석합니다.
NLC는 형태소 분석, 구문분석, 감성분석 등 다양한 방식으로 방대한 빅데이터를 AI로 분석하고 가공하여 고객 맞춤형 분석 및 검색 서비스를 제공하는 기반입니다.</div>
                        <div class="tech_tag"><span>#자연어</span><span>#빅데이터</span><span>#언어분석</span><span>#고객맞춤형</span><span>#AI</span></div>
                    </div>
                </li><li>
                    <div class="tech_name">
                        <div class="tech_num">04</div>AICe
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">AI Core Engine</div>
                        <div class="tech_txt">AICe(에이스)는 AI 핵심 엔진으로 통계적 기계 학습 및 Deep Learning을 통한 데이터 마이닝 및 추론을 통해 다양한 고객의 니즈를 충족합니다.
AICe는 방대한 데이터 사이의 관계를 AI를 통해 연관관계를 파악 또는 요약 등 지능적 분석과 처리가 가능한 AI 엔진입니다.</div>
                        <div class="tech_tag"><span>#연관분석</span><span>#문서요약</span><span>#기계추론</span><span>#기계학습</span><span>#딥러닝</span></div>
                    </div>
                </li><li>
                    <div class="tech_name">
                        <div class="tech_num">05</div>IMA
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">Intelligent Monitoring Agent</div>
                        <div class="tech_txt">IMA는 지능형 모니터링 에이전트로 방대한 데이터 속에서 고객의 관심 이슈를 찾아내는 탐지견의 역할을 하는 인공지능 기술입니다.
사람을 대신해 수집된 데이터의 분석은 물론 데이터 트렌드 내의 이상치나 특이치를 감지하는 AI 엔진입니다.</div>
                        <div class="tech_tag"><span>#수집</span><span>#분석</span><span>#트렌드</span><span>#이상치</span><span>#특이치</span><span>#감지</span></div>
                    </div>
                </li><li>
                    <div class="tech_name">
                        <div class="tech_num">06</div>Issue<br>Map
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">Issue Map</div>
                        <div class="tech_txt">이슈맵은 온라인 뉴스나 각종 커뮤니티, 소셜 미디어와 같은 비정형 데이터를 고객의 관심사에 맞게 처리할 수 있도록 가공된 초대용량 이슈의 집합체입니다.
고객의 관심 이슈에 대한 시간별 추이, 연관성, 관계 그래프 등 다양한 결과물을 얻을 수 있게 합니다.</div>
                        <div class="tech_tag"><span>#초대용량</span><span>#이슈창고</span><span>#관심이슈</span></div>
                    </div>
                </li><li>
                    <div class="tech_name">
                        <div class="tech_num">07</div>AIVe
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">AI Visualization Engine</div>
                        <div class="tech_txt">AIVe(에이브)는 AI 기반의 분석 결과를 고객이 쉽게 판단하고 보고할 수 있도록 시각화하는 엔진입니다. AIVe를 통하여 인사이트 분석과 트렌드리포트 등 다양한 형식의 시각화를 수행할 수 있습니다. 
AIVe는 트렌드맵 및 Deep AI, 자연어 생성 등 SOFIA 플랫폼의 기본엔진을 이용하여 자동으로 데이터를 분석하고 인사이트 리포트까지 작성해 주기 위한 다양한 시각화 모듈을 탑재하고 있습니다.</div>
                        <div class="tech_tag"><span>#트렌드</span><span>#보고서</span><span>#시각화</span><span>#리포트</span><span>#탐지</span></div>
                    </div>
                </li><li>
                    <div class="tech_name">
                        <div class="tech_num">08</div>AISe
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">AI Issue Search Engine</div>
                        <div class="tech_txt">AISe(아이스)는 대용량의 방대한 이슈 중에서 고객에게 딱 맞는 맞춤형 검색을 제공하는 엔진입니다.</div>
                        <div class="tech_tag"><span>#검색</span><span>#맞춤형</span><span>#이슈검색</span></div>
                    </div>
                </li><li>
                    <div class="tech_name">
                        <div class="tech_num">09</div>WCE
                    </div>
                    <div class="tech_cont">
                        <div class="tech_tit">Word Cloud Engine</div>
                        <div class="tech_txt">WCE(워드 클라우드 엔진)은 대용량의 방대한 이슈 중에서 핵심 키워드를 추출하여 손쉽게 전체적인 이슈를 파악할 수 있도록 하는 엔진입니다.</div>
                        <div class="tech_tag"><span>#빅데이터</span><span>#수집</span><span>#비정형데이터</span><span>#정형데이터</span><span>#소셜미디어 </span><span>#커뮤니티</span><span>#온라인뉴스</span></div>
                    </div>
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