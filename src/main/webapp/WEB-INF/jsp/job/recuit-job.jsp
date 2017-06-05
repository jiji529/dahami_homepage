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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function (){
		
		var loc = $(location).attr('search');
		if(loc != ""){
			loc = loc.replace("?loc=","");
			if(loc == "all"){
				$(".tab .tab2 li").removeClass();
				$(".tab .tab2 li").eq(0).addClass("on");
				$('.list0').css('display','');
				$('.list1').css('display','');
				$('.list2').css('display','');
		   	}else if(loc == "new"){
		   		$(".tab .tab2 li").removeClass();
				$(".tab .tab2 li").eq(1).addClass("on");
				$('.list0').css('display','none');
				 $('.list1').css('display','');
				 $('.list2').css('display','');
		   	}else if(loc == "career"){
		   		$(".tab .tab2 li").removeClass();
				$(".tab .tab2 li").eq(2).addClass("on");
				$('.list0').css('display','');
				 $('.list1').css('display','none');
				 $('.list2').css('display','none');
		   	}else{
		   		$(".tab .tab2 li").removeClass();
				$(".tab .tab2 li").eq(0).addClass("on");
				$('.list0').css('display','');
				$('.list1').css('display','');
				$('.list2').css('display','');
		   	}
		}else{
			$(".tab .tab2 li").removeClass();
			$(".tab .tab2 li").eq(0).addClass("on");
		}
		
		
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
                    <p>우수한 인재들의 지원을 기다립니다.</p>
                </div>
                <div class="tab">
                <ul class="tab2">
                    <a href="/job/jobLst.html?loc=all" target="_parent"><li class="on">전체</li></a>
                    <a href="/job/jobLst.html?loc=new" target="_parent"><li>신입</li></a>
                    <a href="/job/jobLst.html?loc=career" target="_parent"><li>경력</li></a>
                </ul></div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <colgroup><col width="15%"><col width="65%"><col width="20%"></colgroup>
                    <tbody>
                    <tr>
                        <th scope="col">구분</th>
                        <th scope="col">내용</th>
                        <th scope="col">모집기한</th>
                    </tr>
                    <tr class="list0">
                        <td>경력</td>
                        <td><a href="jobview.html">[전략기획] 디지털 콘텐츠 기반 사업 기획</a></td>
                        <td>3월 3일</td>
                    </tr>
                    <tr class="list1">
                        <td>신입</td>
                        <td><a href="jobview1.html">[마케팅] 기술영업 및 영업 관리</a></td>
                        <td>3월 3일</td>
                    </tr>
                    <tr class="list2">
                        <td>신입</td>
                        <td><a href="jobview2.html">[큐레이션] 뉴스 클리핑</a></td>
                        <td>3월 3일</td>
                    </tr>
                </tbody></table>
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
