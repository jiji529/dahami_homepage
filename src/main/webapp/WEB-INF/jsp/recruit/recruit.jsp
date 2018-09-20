<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class= >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>다하미커뮤니케이션즈</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>
<style type="text/css">
	div.sub_navi { 
		 height: 50px; 
		 position: absolute; 
		 left: 0; 
		 top: 270px; 
		 width: 100%; 
	} 
	div.fixed { 
	 position: fixed; 
	 top: 0; 
	 left: 0; 
	}
</style>
<script type="text/javascript">
	$(document).ready(function (){
		
		$(window).bind('scroll', function() {
			 if ($(window).scrollTop() > 250) { 
				 $('.sub_navi').addClass('fixed');
			 }else { 
				 $('.sub_navi').removeClass('fixed');
			 }
			 
			 if ($(window).scrollTop() > 490 && $(window).scrollTop() < 890) {
				 $(".sub_navi_li > li").removeClass();
				 $(".sub_navi_li > li:eq(0)").addClass("on");
			 }else if($(window).scrollTop() > 890 && $(window).scrollTop() < 1390) { 
				 $(".sub_navi_li > li").removeClass();
				 $(".sub_navi_li > li:eq(1)").addClass("on");
			 }else if($(window).scrollTop() > 1390 && $(window).scrollTop() < 1990) { 
				 $(".sub_navi_li > li").removeClass();
				 $(".sub_navi_li > li:eq(2)").addClass("on");
			 }
			 
		});
		
		var loc = $(location).attr('search');
		
		if(loc != ""){
			loc = loc.replace("?loc=","");
			
			if(loc == "talent"){
				$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(0)").addClass("on");
				$('html, body').animate({
			        scrollTop: $("#talent").offset().top
			    }, 1000);
	    	}else if(loc == "employ"){
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(1)").addClass("on");
	    		$('html, body').animate({
			        scrollTop: $("#employ").offset().top
			    }, 1500);
	    	}else if(loc == "welfare"){
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(2)").addClass("on");
	    		$('html, body').animate({
			        scrollTop: $("#welfare").offset().top
			    }, 1500);
	    	}else{
	    		$(".sub_navi_li > li").removeClass();
	    		$(".sub_navi_li > li:eq(1)").addClass("on");
	    		$('html, body').animate({
			        scrollTop: $("talent").offset().top
			    }, 1000);
	    	}
		}else{
			$('html, body').animate({}, 1000);
		}
		
		$('.tab > ul > li:eq(0)').on('click', function(e) {
			$(".tab > ul > li").removeClass();
			$(".tab > ul > li:eq(0)").addClass("on");
			$(".tab_area1").css('display','block');
			$(".tab_area2").css('display','none');
		});
		
		$('.tab > ul > li:eq(1)').on('click', function(e) {
			$(".tab > ul > li").removeClass();
			$(".tab > ul > li:eq(1)").addClass("on");
			$(".tab_area2").css('display','block');
			$(".tab_area1").css('display','none');
		});
		
		
		$('.sub_navi_li > li').on('click', function(e) {
			var aTag = $('a', this).attr('href');
			
			if(aTag == "#talent"){
				$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(0)").addClass("on");
				$('html, body').animate({
					scrollTop: $("#talent").offset().top
			    }, 1000);
	    	}else if(aTag == "#employ"){
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(1)").addClass("on");
	    		$('html, body').animate({
	    			scrollTop: $("#employ").offset().top
			    }, 1500);
	    	}else if(aTag == "#welfare"){
	    		$(".sub_navi_li > li").removeClass();
				$(".sub_navi_li > li:eq(2)").addClass("on");
	    		$('html, body').animate({
	    			scrollTop: $("#welfare").offset().top
			    }, 1500);
	    	}else{
	    		$('html, body').animate({
	    			scrollTop: $("#talent").offset().top
			    }, 1000);
	    	}
		});
		
		$('.gnb_menu .menu:eq(2) .gnb_dl dt').addClass('on');
		
		$('.btn_employ').on('click', function(e) {
			alert("현재 진행중인 채용 공고가 없습니다.");		
		});
	});
	
	
	
</script>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<div id="wrap">
    <div id="gnb">
        <jsp:include page="../common/header.jsp"></jsp:include>
    </div>
    <div class="contents">
        <div class="sub_top sub_img3">
            <h2>인재경영</h2>
            <p>글로벌 시장을 이끌어 갈 창조적 인재를 키워 나갑니다.</p>
        </div>
        <div class="sub_navi">
            <ul class="sub_navi_li">
                <li class="on"><a href="#talent">인재상</a></li>
                <li><a href="#employ">채용전형</a></li>
                <li><a href="#welfare">복리후생</a></li>
            </ul>
        </div>
        <div id="talent">
            <div class="talent">
                <div class="inner">
                    <h3>인재상</h3>
                    <p>다하미는 창의적이고 도전적이며 항상 변화를 추구하는 인재와 함께 성장해갑니다.</p>
                </div>
                <ul class="talent_list">
                    <li>
                        <div class="tal_img"><img src="<%=request.getContextPath()%>/images/recruit/tal_img1.png"></div>
                        <div class="tal_tit">창의적인 인재</div>
                        <div class="tal_txt">빠르게 변화하는 시장을<br>
                            선도할 수 있는<br>
                            창의적인 마인드를 가진 인재</div>
                    </li>
                    <li>
                        <div class="tal_img"><img src="<%=request.getContextPath()%>/images/recruit/tal_img2.png"></div>
                        <div class="tal_tit">도전하는 인재</div>
                        <div class="tal_txt">진취적이고 균형있는<br>
                            사고를 통해<br>
                            IT정보화 시대의 주역이 되고자 하는 인재</div>
                    </li>
                    <li>
                        <div class="tal_img"><img src="<%=request.getContextPath()%>/images/recruit/tal_img3.png"></div>
                        <div class="tal_tit">변화를 추구하는 인재</div>
                        <div class="tal_txt">현실에 안주하지 않고<br>
                            더 높은 목표를 향해<br>
                            변화하며 실패를 두려워하지 않는 인재</div>
                    </li>
                </ul>
            </div>
        </div>
        <div id="employ">
            <div class="employ">
                <div class="inner">
                    <h3>채용전형</h3>
                    <p>다하미인을 선발하기 위한 과정입니다.</p>
                </div>
                <div class="tab"><ul>
                    <li class="on">신입</li>
                    <li>경력</li>
                </ul></div>
                <div class="tab_area1" style="display:block;">
                    <ul class="employ_list">
                        <li>
                            <div class="emp_img"><img src="<%=request.getContextPath()%>/images/recruit/emp_img1.png"></div>
                            <div class="emp_tit"><font>Step1.</font>서류전형</div>
                            <div class="emp_txt">제출된 지원서를 바탕으로<br>
                                다하미가 지향하는<br>
                                비전과 가치를 공유하고 있는<br>
                                인재인지 면밀히 검토합니다.</div>
                        </li>
                        <li>
                            <div class="emp_img"><img src="<%=request.getContextPath()%>/images/recruit/emp_img2.png"></div>
                            <div class="emp_tit"><font>Step2.</font>1차면접</div>
                            <div class="emp_txt">지원자가 보유하고 있는 <br>
                                기본지식과 업무수행 능력 등을 <br>
                                평가합니다.<br>
                                - 프리젠테이션 면접<br>
                                설득력, 논리력, 판단력 등을 평가</div>
                        </li>
                        <li>
                            <div class="emp_img"><img src="<%=request.getContextPath()%>/images/recruit/emp_img3.png"></div>
                            <div class="emp_tit"><font>Step3.</font>2차면접</div>
                            <div class="emp_txt">임원진과의 면접을 통하여<br>
                                인성, 기업관, 패기, 사교성, <br>
                                인화력, 성실성 등을 <br>
                                종합적으로 판단하게 됩니다.</div>
                        </li>
                        <li>
                            <div class="emp_img"><img src="<%=request.getContextPath()%>/images/recruit/emp_img4.png"></div>
                            <div class="emp_tit"><font>Step4.</font>최종합격</div>
                            <div class="emp_txt">연수교육과 수습사원 과정을 거쳐 <br>
                                최종 평가 후 <br>
                                정식으로 다하미 신입사원이 됩니다.</div>
                        </li>
                    </ul>
                </div>
                <div class="tab_area2" style="display:none;">
                    <ul class="employ_list">
                        <li>
                            <div class="emp_img"><img src="<%=request.getContextPath()%>/images/recruit/emp_img1.png"></div>
                            <div class="emp_tit"><font>Step1.</font>서류전형</div>
                            <div class="emp_txt">제출된 지원서를 바탕으로<br>
                                다하미가 지향하는<br>
                                비전과 가치를 공유하고 있는<br>
                                인재인지 면밀히 검토합니다.</div>
                        </li>
                        <li>
                            <div class="emp_img"><img src="<%=request.getContextPath()%>/images/recruit/emp_img2.png"></div>
                            <div class="emp_tit"><font>Step2.</font>1차면접</div>
                            <div class="emp_txt">지원자가 보유하고 있는 <br>
                                기본지식과 업무수행 능력 등을 <br>
                                평가합니다.<br>
                                - 프리젠테이션 면접<br>
                                설득력, 논리력, 판단력 등을 평가</div>
                        </li>
                        <li>
                            <div class="emp_img"><img src="<%=request.getContextPath()%>/images/recruit/emp_img3.png"></div>
                            <div class="emp_tit"><font>Step3.</font>2차면접</div>
                            <div class="emp_txt">임원진과의 면접을 통하여<br>
                                인성, 기업관, 패기, 사교성, <br>
                                인화력, 성실성 등을 <br>
                                종합적으로 판단하게 됩니다.</div>
                        </li>
                        <li>
                            <div class="emp_img"><img src="<%=request.getContextPath()%>/images/recruit/emp_img5.png"></div>
                            <div class="emp_tit"><font>Step4.</font>최종합격</div>
                            <div class="emp_txt">연수교육과 수습사원 과정을 거쳐 <br>
                                최종 평가 후 <br>
                                정식으로 다하미 경력사원이 됩니다.</div>
                        </li>
                    </ul>
                </div>
                <!--
                <div class="btn_employ"><a href="/job/jobLst.html" target="_blank">지원하기</a></div>
                 -->
                 
                 <div class="btn_employ"><a href="#employ">지원하기</a></div>
            </div>
        </div>
        <div id="welfare">
            <div class="welfare">
                <div class="inner">
                    <h3>복리후생</h3>
                    <p>다하미는 다양한 복리후생 제도를 통해 사원들의 의욕을 높이고 생활의 안정을 유지시켜 업무의 효율성을 높이고 있습니다.</p>
                </div>
                <h4>법정 복리후생 제도</h4>
                <div class="wel1"><img src="<%=request.getContextPath()%>/images/recruit/wel_img0.png"></div>
                <h4>법정 외 복리후생 제도</h4>
                <ul class="wel_list">
                    <li>
                        <div class="wel_img"><img src="<%=request.getContextPath()%>/images/recruit/wel_img9.png"></div>
                        <div class="wel_tit">장기근속 시상</div>
                        <div class="wel_txt">본사에 장기근속한 임원 및 정직원을 축하하고 포상금 및 포상휴가를 지원합니다.</div>
                    </li>
                    <li>
                        <div class="wel_img"><img src="<%=request.getContextPath()%>/images/recruit/wel_img5.png"></div>
                        <div class="wel_tit">우수사원 포상</div>
                        <div class="wel_txt">모범적이고 뛰어난 업무역량을 보여준 직원에 대해서 공로상 및 모범사원 포상 제도를 운영하고 있습니다.</div>
                    </li>               
                    <li>
                        <div class="wel_img"><img src="<%=request.getContextPath()%>/images/recruit/wel_img2.png"></div>
                        <div class="wel_tit">자녀 학자금, 자녀 육아수당 지원</div>
                        <div class="wel_txt">임직원 자녀의 보육과 교육을 위해 육아수당 및 자녀 학자금을 지원합니다.</div>
                    </li>
                    <li>
                        <div class="wel_img"><img src="<%=request.getContextPath()%>/images/recruit/wel_img3.png"></div>
                        <div class="wel_tit">경조금, 경조휴가 지원</div>
                        <div class="wel_txt">각종 경조사 발생 시 경조휴가를 부여하고, <br>회사 차원에서 예를 표하기 위하여 경조금을 지원합니다.</div>
                    </li>
                    <li>
                        <div class="wel_img"><img src="<%=request.getContextPath()%>/images/recruit/wel_img7.png"></div>
                        <div class="wel_tit">사우회 활동 지원</div>
                        <div class="wel_txt">사원들간 친목을 도모하고 즐겁게 일할 수 있도록 하는<br>사우회의 활동을 지원합니다.</div>
                    </li>
                    <li>
                        <div class="wel_img"><img src="<%=request.getContextPath()%>/images/recruit/wel_img8.png"></div>
                        <div class="wel_tit">업무 위탁교육 지원</div>
                        <div class="wel_txt">직원 개개인의 관리 역량 개발과 원활한 수행을 위해 외부에서 시행하는 각종 직무교육 수강을 지원합니다.</div>
                    </li>
                    <li>
                        <div class="wel_img"><img src="<%=request.getContextPath()%>/images/recruit/wel_img1.png"></div>
                        <div class="wel_tit">생일, 결혼기념일 지원</div>
                        <div class="wel_txt">매월 생일자에게 생일파티 및 선물을 지원합니다.<br>결혼한 임직원에게는 결혼기념일에  선물을 지원합니다.</div>
                    </li>                    
                    <li>
                        <div class="wel_img"><img src="<%=request.getContextPath()%>/images/recruit/wel_img6.png"></div>
                        <div class="wel_tit"> 기념일 선물 지급</div>
                        <div class="wel_txt"> 명절, 창립기념일 등 선물을 지급합니다.</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="bottom">
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>