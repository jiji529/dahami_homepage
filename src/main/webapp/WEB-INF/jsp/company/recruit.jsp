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
            <h2>회사</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/company.html">회사소개</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/company/recruit.html">채용</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/faq.html">자주 묻는 질문</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/qna.html">문의하기</a></div>
            </div>
        </div>
    </section>
    <section class="sub_recruit1">
        <div class="inner">
            <h2 class="sub_tit">인재상</h2>
            <p class="sub_txt">다하미커뮤니케이션즈는 창의적이고 도전적이며 항상 변화를 추구하는 인재와 함께 성장해갑니다.</p>
            <div class="grid3">
                <div class="rcrt1">
                    <h4 class="rcrt1_tit">창의적인 인재</h4>
                    <h4 class="rcrt1_txt">빠르게 변화하는 시장을 선도할 수 있는 창의적인 마인드를 가진 인재</h4>
                </div>
                <div class="rcrt1">
                    <h4 class="rcrt1_tit">도전하는 인재</h4>
                    <h4 class="rcrt1_txt">진취적이고 균형있는 사고를 통해<br>
                        IT정보화 시대의 주역이 되고자 하는 인재</h4>
                </div>
                <div class="rcrt1">
                    <h4 class="rcrt1_tit">변화를 추구하는 인재</h4>
                    <h4 class="rcrt1_txt">현실에 안주하지 않고 더 높은 목표를 향해 변화하며 실패를 두려워하지 않는 인재</h4>
                </div>
            </div>
        </div>
    </section>

    <section class="sub_recruit2 reveal">
        <div class="inner">
            <h2 class="sub_tit">채용 전형</h2>
            <p class="sub_txt">다하미커뮤니케이션즈는 창의적이고 도전적이며 항상 변화를 추구하는 인재와 함께 성장해갑니다.</p>
            <div class="grid4">
                <div class="rcrt2">
                    <h4 class="rcrt2_num">step 1</h4>
                    <div class="rcrt_box"></div>
                    <p class="rcrt2_desc">서류전형</p>
                </div>
                <div class="rcrt2">
                    <h4 class="rcrt2_num">step 2</h4>
                    <div class="rcrt_box"></div>
                    <p class="rcrt2_desc">1차 면접</p>

                </div>
                <div class="rcrt2">
                    <h4 class="rcrt2_num">step 3</h4>
                    <div class="rcrt_box"></div>
                    <p class="rcrt2_desc">2차 면접</p>

                </div>
                <div class="rcrt2">
                    <h4 class="rcrt2_num">step 4</h4>
                    <div class="rcrt_box"></div>
                    <p class="rcrt2_desc">최종 합격</p>

                </div>
            </div>
        </div>
    </section>
    <section class="sub_recruit3 reveal">
        <div class="inner">
            <h2 class="sub_tit">복리후생</h2>
            <p class="sub_txt">다하미커뮤니케이션즈는 다양한 복리후생 제도를 통해 사원들의 의욕을 높이고 생활의 안정을 유지시켜 업무의 효율성을 높이고 있습니다.</p>
            <div class="rcrt3 reveal">
                <h4>법정 복리후생 제도</h4>
                <ul class="grid_rcrt">
                    <li><div>국민연금</div></li>
                    <li><div>건강보험</div></li>
                    <li class="rcrt_li grid-row">+</li>
                    <li class="grid-row"><div>퇴직연금<p>퇴직연금 사외적립<br>국내 최대 생명보험사에 사외 적립 중</p></div>
                    </li>
                    <li><div>고용보험</div></li>
                    <li><div>산재보험</div></li>
                    
                </ul>
            </div>
            <div class="rcrt4 reveal">
                <h4>법정 외 복리후생 제도</h4>
                <ul class="grid3">
                    <li><div>장기근속<p>본사에 장기근속한 임원 및 정직원을 축하하고
                            포상금 및 포상휴가를 지원합니다.</p></div>
                    </li>
                    <li><div>청년내일채움공제 지원<p>장기근속 유도와 자산형성을 위한 공제 가입을
                            지원합니다.</p>
                   </div> </li>
                    <li><div>자녀 학자금, 자녀 육아수당 지원<p>임직원 자녀의 보육과 교육을 위해 육아수당 및
                            자녀 학자금을 지원합니다.</p>
                   </div> </li>
                    <li><div>경조금, 경조휴가 지원<p>임직원의 경사를 축하하고 조사를 위로하고자
                            경조금과 경조휴가를 지원합니다.</p>
                   </div> </li>
                    <li><div>사우회 활동 지원<p>사원들간 친목을 도모하고 즐겁게 일할 수 있도록
                            사우회의 활동을 지원합니다.</p>
                   </div> </li>
                    <li><div>업무 위탁교육 지원<p>직원 개개인의 관리 역량 개발과 원활한 수행을
                            위해 외부에서 시행하는 각종 직무교육 수강을
                            지원합니다.</p>
                   </div> </li>
                    <li><div>생일 및 기념일 지원<p>매월 생일자에게 생일파티 및 선물을 지원합니다.
                            명절, 창립기념일 등 임직원에게 선물을 지급합니다.</p>
                 </div>   </li>
                </ul>
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