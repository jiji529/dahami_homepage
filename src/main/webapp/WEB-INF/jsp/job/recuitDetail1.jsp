<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>다하미 채용 지원</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function (){		
		$('.callcenter').on('click', function(e) {
			$("#pop3").css('display','block');
		});
		
		$('.pop_close').on('click', function(e) {
			$("#pop3").css('display','none');
		});
	});
</script>
</head>
<body>
<div id="pop3" style="display:none;">
    <div class="pop_bg"></div>
    <div class="pop_layer pop_1">
        <h1>문의하기</h1>
        <div class="pop_wrap">
            <div class="pop_close"><p>닫기</p></div>
            <div class="pop_cont">
                <img src="/images/callcenter.png" />
            </div>
        </div>
    </div>
</div>
<div id="wrap">
    <div id="gnbcruit">
        <h1><a href="/job/jobLst.html">DAHAMI Recruit</a></h1>
        <div class="callcenter"><a href="#">문의하기</a></div>
    </div>
    <div class="contents">
        <div class="sub_top sub_img3">
            <h4>다하미와 함께 성장할 인재를 모집합니다. </h4>
        </div>
        <div id="job">
            <div class="job">
                <div class="inner">
                    <h3>진행 중 공고</h3>
                    <p>우수한 인재들의 지원을 기다립니다.
                        </dd>
                </div>
                <div class="tab">
                <ul class="tab2">
                    <a href="/job/jobLst.html?loc=all" target="_parent"><li class="on">전체</li></a>
                    <a href="/job/jobLst.html?loc=new" target="_parent"><li>신입</li></a>
                    <a href="/job/jobLst.html?loc=career" target="_parent"><li>경력</li></a>
                </ul></div>
                <div class="job_view">
                    <div class="job_v_tit">[마케팅] 기술영업 및 영업 관리</div>
                    <div class="job_v_cont">
                        <dl>
                        	<dt>1. 담당 업무</dt>
                            <dd>- 기술영업<br/>
                            	- 인원 O 명
                            </dd>
                            
                            <dt>2. 자격요건</dt>
                            <dd>- 대졸(4년) 또는 졸업예정자<br/>
								- 신입채용 <br/>
							</dd>
							
                            <dt>3. 우대조건</dt>
                            <dd>
                            	- OA 활용 중급 이상자<br />
								- IT 관련 솔루션 및 관련영업<br />
								- IT 분야 종사경험자 우대<br />
								- 제안, 분석, PT스킬, Pre-sales 가능자<br /> 
								- 고객 관리 Skill 보유자<br />
								- 대외적인 커뮤니케이션이 원활하고 적극적인 사고의 보유자<br />
							</dd>
							
                            <dt>4. 근무조건</dt>
                            <dd> - 근무지역 : 본사 <br />
                                - 급여 : 회사내규에 따름 <br />
                                - 근무형태 : 정규직(수습기간 - 내규에 따름) <br />
                                - 근무요일: 주5일제 <br />
                                - 근무시간 : 09:00 ~ 18:00
                            </dd>
                            
                            <dt>5. 복리후생</dt>
                            <dd>- 4대보험/퇴직금 사외적립  <br />
								- 연·월차 / 경조휴가(경조금)  <br />
								- 생일, 결혼기념일 지원 / 육아수당, 자녀학자금 지원  <br />
								- 업무위탁교육 지원 / 동호회활동 지원  <br />
								- 창립기념일선물 / 명절선물 지원 
                            </dd>
                                
                            <dt>6. 제출 서류</dt>
                            <dd>- 자유 양식 이력서(희망연봉기재) 및 자기소개서 또는 지원서 다운로드</dd>
                            
                            <dt>7. 접수기간 및 방법</dt>
                            <dd>- 접수기간 : 2017. 03. 03 24시마감<br />
                                - 접수방법 : 홈페이지 지원 <br />
                                <br />
                                - 경영관리실 : 02-593-4174(내선605)<br />
                                - E-Mail문의 : recruit@dahami.com<br />
                                - 문의 가능 시간 : 오전 9시 ~ 오후 6시 </dd>
                        </dl>
                        <div class="job_btn"><a href="/data/DAHAMI-RESUME.xls">지원서 다운로드</a>
                        <a href="jobmail.html">지원하기</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="bottom">
    	<jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
    <div id="top"><a href="#">Top</a></div>
</div>
</body>
</html>
