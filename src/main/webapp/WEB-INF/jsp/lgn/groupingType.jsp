<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<title>그룹화 타입</title>
<link rel="stylesheet" type="text/css" href="../layout.css" />
<link rel="stylesheet" type="text/css" href="../css/grouping.css" />
<script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>
<jsp:include page="../common/google_analytics.jsp"></jsp:include>
</head>
<body>
	<div id="wrap">
		
		<!-- header -->
		<div id="header">
			<div class="header_menu left">
				<div class="logo"></div><span>디자인 참증자료 그룹화 시스템</span>
			</div>

			<div class="header_menu right">
				<ul class="list">
					<li class="date">2015. 03. 25. </li>
					<div class="seperate left">/</div>
					<li class="user">홍길동 작업자님</li>
					<div class="seperate left">/</div>
					<li class="logout"><a href="">로그아웃</a></li>
					<div class="seperate left">/</div>
					<li class="account last"><a href="">정보수정</a></li>
				</ul>
			</div>
		</div>
		<!-- //header -->
		
		<!-- container -->
		<div id="container">
			<div class="main_top">
				<div class="img left"><img src="../../images/img.png"></div>
				<div class="seperate left"></div>
				<div class="search_result left">
					<p class="title">검색결과</p>
					<p class="result">10건이 검색되었습니다.</p>
				</div>
			</div>
			
			<!-- image content -->
			<div class="img_contents type">
			
				<!-- snb -->
				<div class="snb left">
					<div class="main_img">
						<li class="img"><img alt="" src="../../images/thum.jpg"></li>
						<li class="title">대표도면</li>
					</div>
					<div class="main_info">
						<li class="application title">출원사항</li>
						<li class="design title">디자인사항</li>
					</div>
				</div>
				<!-- //snb -->
				
				<!-- content -->
				<div class="type_list left">
					
						<span class="type" id="type1">01 TYPE</span>
						<ul class="box_list" id="type1">
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/sample.jpeg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/thum2.jpg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/thum3.jpg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/thum5.jpg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
						</ul>
					
						<span class="type" id="type2">02 TYPE</span>
						<ul class="box_list" id="type2">
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/sample.jpeg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/sample.jpeg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
						</ul>
						
						<span class="type">03 TYPE</span>
						<ul class="box_list" id="type3">
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/sample.jpeg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/sample.jpeg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
							<li class="box">
								<ul class="firstbox">
									<li class="img"><img src="../../images/sample.jpeg"></li>
									<li class="number"><span class="title">30-2000-0000</span><input type="checkbox" class="select_img"></li>
									<li class="date"><span class="title">출원일 : </span><span class="data">2000.01.01</span></li>
									<li class="applicant"><span class="title">출원인 : </span><span class="data">삼성전자</span></li>
								</ul>
							</li>
						</ul>
				</div>
				<!-- //content -->
			</div>
			<!-- //image content -->
			
			<div class="btn right" id="save">
				<a href="#">저장</a>
			</div>
			<div class="btn right" id="delete">
				<a href="#">삭제</a>
			</div>
			
		</div>
		<!-- //container -->
		
		<!-- footer -->
		<div id="footer">
			<p class="copyright">Copyright 2015 WIPS Co.,Ltd. All Lights reserved.</p>
		</div>
		<!-- //footer -->
	</div>
	
	<div id="delete_alert">
		해당 건을 삭제하시겠습니까?
	</div>
	
	<script type="text/javascript">
	
//		알림 팝업
		var dialog = $( "#delete_alert" ).dialog({
	      autoOpen: false,
	      height: 130,
	      width: 400,
	      modal: true,
	      buttons: {
	      	  확인: function() {
	          dialog.dialog( "close" );
	        }
	      }
	    });
	    
	
//		 삭제 버튼 클릭시 알림 팝업 오픈   
		 $('#delete').on('click', function(e) {
			dialog.dialog( "open" );
		 });
		 
		
// 		이미지 드래그앤드랍
		 $('.type_list').find('.box_list').sortable({
		 	connectWith: '.box_list'
		 });
		 
//		 이미지 resize
		$('.img img').each(function(i, item) {
			var img_height = $(item).height();
			var div_height = $(item).parent().height();
			if(img_height<div_height){
				var newMargin = (div_height-img_height)/2+'px';
				$(item).css({'margin-top': newMargin });
			}else if(img_height>div_height){
				$(item).css({'width': 'auto', 'height': '100%'});
			}
		});
		 
	</script>
	
</body>
</html>