<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<jsp:include page="../common/google_analytics.jsp"></jsp:include>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.twbsPagination.js"></script>
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
		 if ($(window).scrollTop() > 490 && $(window).scrollTop() < 1000) {
			 $(".sub_navi_li > li").removeClass();
			 $(".sub_navi_li > li:eq(0)").addClass("on");
		 }else if($(window).scrollTop() > 1000 && $(window).scrollTop() < 1500) { 
			 $(".sub_navi_li > li").removeClass();
			 $(".sub_navi_li > li:eq(1)").addClass("on");
		 }else if($(window).scrollTop() > 1500 && $(window).scrollTop() < 2000) { 
			 $(".sub_navi_li > li").removeClass();
			 $(".sub_navi_li > li:eq(2)").addClass("on");
		 }
	});
	
	var loc = $(location).attr('search');
	
	if(loc != ""){
		loc = loc.replace("?loc=","");
		if(loc == "new"){
			$(".sub_navi_li > li").removeClass();
			$(".sub_navi_li > li:eq(0)").addClass("on");
			$('html, body').animate({
		        scrollTop: $("#new .inner").offset().top
		    }, 1000);
	   	}else if(loc == "faq"){
	   		$(".sub_navi_li > li").removeClass();
			$(".sub_navi_li > li:eq(1)").addClass("on");
	   		$('html, body').animate({
		        scrollTop: $("#faq .inner").offset().top
		    }, 1500);
	   	}else if(loc == "call"){
	   		$(".sub_navi_li > li").removeClass();
			$(".sub_navi_li > li:eq(2)").addClass("on");
	   		$('html, body').animate({
		        scrollTop: $("#call .inner").offset().top
		    }, 2000);
	   	}else if(loc == "calls"){
	   		$(".sub_navi_li > li").removeClass();
			$(".sub_navi_li > li:eq(1)").addClass("on");
	   		$('html, body').animate({
		        scrollTop: $("#call .inner").offset().top
		    }, 10);
	   	}else{
	   		$(".sub_navi_li > li").removeClass();
			$(".sub_navi_li > li:eq(0)").addClass("on");
	   		$('html, body').animate({
		        scrollTop: $("intro").offset().top
		    }, 1000);
	   	}
	}else{
		$('html, body').animate({
	        scrollTop: $("#gnb").offset().top
	    }, 1000);
	}
	
	// 새소식 클릭시
	$(".sub_navi_li > li:eq(0)").on('click', function(e) {
		$(".sub_navi_li > li").removeClass();
		$(".sub_navi_li > li:eq(0)").addClass("on");
		$('html, body').animate({
	        scrollTop: $("#new .inner").offset().top
	    }, 1500);
	});
	
	//자주묻는 질문 클릭시
	$(".sub_navi_li > li:eq(1)").on('click', function(e) {
		$(".sub_navi_li > li").removeClass();
		$(".sub_navi_li > li:eq(1)").addClass("on");
		$('html, body').animate({
	        scrollTop: $("#faq .inner").offset().top
	    }, 1500);
	});
	
	//문의하기 클릭시
	$(".sub_navi_li > li:eq(2)").on('click', function(e) {
		$(".sub_navi_li > li").removeClass();
		$(".sub_navi_li > li:eq(2)").addClass("on");
		$('html, body').animate({
	        scrollTop: $("#call .inner").offset().top
	    }, 1500);
	});
	
	$('.gnb_menu .menu:eq(3) .gnb_dl dt').addClass('on');
	
	//숫자만 입력 가능하게
	$(".num").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
             // Allow: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) ||
             // Allow: Ctrl+C
            (e.keyCode == 67 && e.ctrlKey === true) ||
             // Allow: Ctrl+X
            (e.keyCode == 88 && e.ctrlKey === true) ||
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
                 // let it happen, don't do anything
                 return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105 )){
            e.preventDefault();
        }
    });
	
	// 이메일 보내기
	$(".call_send").on('click', function(e) {
		var name = "";
		var phone = "";
		var email = "";
		var title = "";
		var contents = "";
		var tempPhone = "";
		var tempEmail = "";
		var chkflag = false;
		
		name = $('#commuName').val();
		phone = $('#firNum').val()+"-"+$('#midNum').val()+"-"+$('#lastNum').val();
		email = $('#firEmail').val()+"@"+$('#lastEmail').val();
		title = $('#commuTitle').val();
		contents = $('#commuContents').val();
		
		tempPhone = $('#firNum').val()+$('#midNum').val()+$('#lastNum').val();
		tempEmail = $('#firEmail').val()+$('#lastEmail').val();
		chkflag = $('#chk').prop('checked');
		
		if(chkflag  == false){
			alert("개인정보 수집에 동의 하여 주십시오");
			$('#chk').focus();
		}else if(name == ""){
			alert("성명을 기입하여 주십시오");
			$('#commuName').focus();
			return false;
		}else if(tempPhone == ""){
			alert("연락처를 기입하여 주십시오");
			$('#firNum').focus();
			return false;
		}else if(tempEmail == ""){
			alert("이메일을 기입하여 주십시오");
			$('#firEmail').focus();
			return false;
		}else if(title == ""){
			alert("제목을 기입하여 주십시오");
			$('#commuTitle').focus();
			return false;
		}else if(contents == ""){
			alert("내용을 기입하여 주십시오");
			$('#commuContents').focus();
			return false;
		}else{
			$.ajax({
				url : "../community/sendEmail.html",
				cache : false,
			    dataType: 'json',
			    contentType: 'application/json; charset=utf-8',
				data: {
					name: name,
					phone: phone,
					email: email,
					title: title,
					contents: contents
		        },
				success: response_jsonlst
			});
		}
	});
	
	
	$("#searchTxt").on('click', function(e) {
		var pages = 1;
		var keyword = $("#searchInput").val();
		$("#startgo").val("1");
		
		$.ajax({
			url : "../community/boardLst.html",
			cache : false,
		    dataType: 'json',
		    contentType: 'application/json; charset=utf-8',
			data: {
				pages: pages,
				keyword : keyword
	        },
			success: board_jsonlst
		});
	});
	
	$('#searchInput').on('keypress', function(e) {
		if (e.which == 13) {/* 13 == enter key@ascii */
			var pages = 1;
			var keyword = $("#searchInput").val();
			$("#startgo").val("1");
			
			$.ajax({
				url : "../community/boardLst.html",
				cache : false,
			    dataType: 'json',
			    contentType: 'application/json; charset=utf-8',
				data: {
					pages: pages,
					keyword : keyword
		        },
				success: board_jsonlst
			});
		}
	});
	
	$("#searchTxt1").on('click', function(e) {
		var pages = 1;
		var keyword = $("#searchInput1").val();
		$("#startgo1").val("1");
		
		$.ajax({
			url : "../community/qnaLst.html",
			cache : false,
		    dataType: 'json',
		    contentType: 'application/json; charset=utf-8',
			data: {
				pages: pages,
				keyword : keyword
	        },
			success: qna_jsonlst
		});
	});
	
	$('#searchInput1').on('keypress', function(e) {
		if (e.which == 13) {/* 13 == enter key@ascii */
			var pages = 1;
			var keyword = $("#searchInput1").val();
			$("#startgo1").val("1");
			
			$.ajax({
				url : "../community/qnaLst.html",
				cache : false,
			    dataType: 'json',
			    contentType: 'application/json; charset=utf-8',
				data: {
					pages: pages,
					keyword : keyword
		        },
				success: qna_jsonlst
			});
		}
	});
	
	//페이징
	$('#pagination-demo').twbsPagination({
	    totalPages: 15,
	    visiblePages: 10,
	    onPageClick: function (event, page) {
	        $('#page-content').text('Page ' + 15);
	        //pagingw(page);
	    }
	});
	
	$(document).on("click",".page",function() {
		var pages = $(this).text();
		var keyword = $("#searchInput").val();
		
		$("#startgo").val("");
		$("#totcnt").val($(this).text());
		
		$.ajax({
			url : "../community/boardLst.html",
			cache : false,
		    dataType: 'json',
		    contentType: 'application/json; charset=utf-8',
			data: {
				pages: pages,
				keyword : keyword
	        },
			success: board_jsonlst
		});
	});
	
	$(document).on("click",".last",function() {
		var pages = $("#lastvalue").val();
		var keyword = $("#searchInput").val();
		
		$("#startgo").val("");
		$("#totcnt").val($("#lastvalue").val());
		
		$.ajax({
			url : "../community/boardLst.html",
			cache : false,
		    dataType: 'json',
		    contentType: 'application/json; charset=utf-8',
			data: {
				pages: pages,
				keyword : keyword
	        },
			success: board_jsonlst
		});
	});
	
	$(document).on("click",".first",function() {
		var pages = "1";
		var keyword = $("#searchInput").val();
		
		$("#startgo").val("");
		$("#totcnt").val("1");
		
		$.ajax({
			url : "../community/boardLst.html",
			cache : false,
		    dataType: 'json',
		    contentType: 'application/json; charset=utf-8',
			data: {
				pages: pages,
				keyword : keyword
	        },
			success: board_jsonlst
		});
	});
	
	$(document).on("click",".prev",function() {
		var pages = $("#pagination-demo .page.active").text();
		var keyword = $("#searchInput").val();
		$("#totcnt").val(pages);
		
		$.ajax({
			url : "../community/boardLst.html",
			cache : false,
		    dataType: 'json',
		    contentType: 'application/json; charset=utf-8',
			data: {
				pages: pages,
				keyword : keyword
	        },
			success: board_jsonlst
		});
		
	});
	
	$(document).on("click",".next",function() {
		var pages = $("#pagination-demo .page.active").text();
		var keyword = $("#searchInput").val();
		$("#totcnt").val(pages);
		
		$.ajax({
			url : "../community/boardLst.html",
			cache : false,
		    dataType: 'json',
		    contentType: 'application/json; charset=utf-8',
			data: {
				pages: pages,
				keyword : keyword
	        },
			success: board_jsonlst
		});
		
	});
});


// success성공시 성공 여부 확인 창
function response_jsonlst(){
	alert("관리자에게 문의사항이 전달 되었습니다.");
	
	$('#commuName').val("");
	$('#firNum').val("");
	$('#midNum').val("");
	$('#lastNum').val("");
	$('#firEmail').val("")
	$('#lastEmail').val("");
	$('#commuTitle').val("");
	$('#commuContents').val("");
	
	tempPhone = $('#firNum').val()+$('#midNum').val()+$('#lastNum').val();
	tempEmail = $('#firEmail').val()+$('#lastEmail').val();
	
}


// 새소식 클릭시 반응
function evt(newwin){
	var objid=document.getElementById(newwin);
	
	//class='on'
	
	if(objid.style.display=="block")
	{
	  objid.style.display="none";
	  $("#boardlst dt").removeClass();
	}
	else{
	  $('#boardlst dd').css('display','none');
	  $("#boardlst dt").removeClass();
	  objid.style.display="block";
	  $("#dt"+newwin).addClass("on");
	}
}

//새소식 클릭시 반응
function evt1(newwin){
	var objid=document.getElementById("faq_dd"+newwin);
	
	//class='on'
	
	if(objid.style.display=="block")
	{
	  objid.style.display="none";
	  $("#faqlst dt").removeClass();
	}
	else{
	  $('#faqlst dd').css('display','none');
	  $("#faqlst dt").removeClass();
	  objid.style.display="block";
	  $("#faq_dt"+newwin).addClass("on");
	}
}

// 페이징 처리
function pagingw(page){
	var pages = page;
	var keyword = $("#searchInput").val();
	
	$.ajax({
		url : "../community/boardLst.html",
		cache : false,
	    dataType: 'json',
	    contentType: 'application/json; charset=utf-8',
		data: {
			pages: pages,
			keyword : keyword
        },
		success: board_jsonlst
	});
}


//success성공시 관련 리스트 출력
function board_jsonlst(json){
	
	var mainImgList = json;
	$('#boardlst').empty();
	var html = "";
	var totpage;
		
	if(mainImgList.length == 0){
		
		html +=  "<dt style='cursor: pointer;' align='center'>";
		html +=  "<span align='center'>결과내 검색 결과가 없습니다.</span>";
		html +=  "</dt>";
		html +=  "<p><br/><p></p></p>";
		html +=  "</dt>";
		
	}else{
		
		$.each(mainImgList, function(key){
			var curNum = key+1;
			html +=  "<dt id='dt"+key+"' style='cursor: pointer;'>";
			html +=  "<a onclick='evt("+key+")'>";
			html +=  "<span class='new_tit'>"+mainImgList[key].title+"</span>";
			html +=  "<span class='new_date'>"+mainImgList[key].regdate+"</span>";
			html +=  "<span class='new_ico'></span></a></dt>";
			html +=  "<dd id='"+key+"' style='display: none;'>";
			html +=  "<p class='new_contit'>"+mainImgList[key].title+"<br/><p>"+mainImgList[key].body+"</p></p>";
			if(mainImgList[key].file != ""){
				// 관리자 페이지와 첨부파일 자동 연동되도록 경로 변경 -- 2019.03.06. hoyadev
				// "http://dahami.com/file/"  -->  "http://board.scrapmaster.co.kr/files/"으로 변경   
				html +=  "<img src='http://board.scrapmaster.co.kr/files/"+mainImgList[key].file+"' width='900px' />";
			}
			html +=  "</dd></dt>";
		});
	}
	
	$('#boardlst').append(html);
	
	if(mainImgList.length > 0){
		totpage = mainImgList[0].totPage;
	}
	
	//페이징
	pagings(totpage);
}

//success성공시 관련 리스트 출력
function qna_jsonlst(json){
	
	var faqList = json;
	$('#faqlst').empty();
	var html = "";
	var totpage;
		
	if(faqList.length == 0){
		html +=  "<dt style='cursor: pointer;' align='center'>";
		html +=  "<span align='center'>결과내 검색 결과가 없습니다.</span>";
		html +=  "</dt>";
		html +=  "<p><br/><p></p></p>";
		html +=  "</dt>";
		
	}else{
		$.each(faqList, function(key){
			var curNum = key+1;
			html +=  "<dt id='faq_dt"+key+"' style='cursor: pointer;'>";
			html +=  "<a onclick='evt1("+key+")'>";
			html +=  "<span class='faq_date'>"+faqList[key].gubun+"</span>";
			html +=  "<span class='faq_tit'>"+faqList[key].quest+"</span>";
			html +=  "<span class='faq_ico'></span></a></dt>";
			html +=  "<dd id='faq_dd"+key+"' style='display: none;'>";
			html +=  "<p class='faq_contit'>"+faqList[key].quest+"<br/><p>"+faqList[key].answer+"</p></p>";
			html +=  "</dd></dt>";
		});
	}
	
	$('#faqlst').append(html);
	
	if(faqList.length > 0){
		totpage = faqList[0].totPage;
	}
	
	//페이징
	pagings1(totpage);
}

function newInfo(){
	$(".sub_navi_li > li").removeClass();
	$(".sub_navi_li > li:eq(0)").addClass("on");
	$('html, body').animate({
		scrollTop: $("#new .inner").offset().top
	}, 1 );
}

function pagings(tot){
	
	var firval = 1;
	var realtot = 1;
	var startpage = $("#startgo").val();
	$("#lastvalue").val(tot);
	
	if($("#totcnt").val() != ""){
		if(startpage == "1"){
			firval = parseInt(startpage);
		}else{
			firval = parseInt($("#totcnt").val());
		}
	}
	if(tot == "0"){
		tot = 1;
	}
	
	
	realtot = parseInt(tot);
		
	
	$('.paging').empty();
	$('.paging').html('<ul id="pagination-demo" class="pagination-sm"></ul>');
	
	$('#pagination-demo').twbsPagination({
		startPage: firval,
	    totalPages: realtot,
	    visiblePages: 10,
	    onPageClick: function (event, page) {
	    	$('#page-content').text('Page ' + page);
        }
	});
	
	resetBoard();
}

function pagings1(tot){
	
	var firval = 1;
	var realtot = 1;
	var startpage = $("#startgo1").val();
	$("#lastvalue1").val(tot);
	
	if($("#totcnt1").val() != ""){
		if(startpage == "1"){
			firval = parseInt(startpage);
		}else{
			firval = parseInt($("#totcnt1").val());
		}
	}
	if(tot == "0"){
		tot = 1;
	}
	
	
	realtot = parseInt(tot);
		
	
	$('.paging1').empty();
	$('.paging1').html('<ul id="pagination1-demo" class="pagination1-sm"></ul>');
	
	$('#pagination1-demo').twbsPagination({
		startPage: firval,
	    totalPages: realtot,
	    visiblePages: 10,
	    onPageClick: function (event, page) {
	    	$('#page-content1').text('Page ' + page);
        }
	});
	
	resetBoard1();
}

function resetBoard(){
	$(".sub_navi_li > li").removeClass();
	$(".sub_navi_li > li:eq(0)").addClass("on");
	$('html, body').animate({
        scrollTop: $("#new .inner").offset().top
    }, 10);
}

function resetBoard1(){
	$(".sub_navi_li > li").removeClass();
	$(".sub_navi_li > li:eq(1)").addClass("on");
	$('html, body').animate({
        scrollTop: $("#faq .inner").offset().top
    }, 10);
}

</script>
</head>
<body onResize="confLayout();" onLoad="confLayout();">
<input type="hidden" id="totcnt" value="${totcnt}" />
<input type="hidden" id="startgo" value="" />
<input type="hidden" id="lastvalue" value="${totcnt}" />

<div id="wrap">
	<div id="gnb">
        <jsp:include page="../common/header.jsp"></jsp:include>
    </div>
    <div class="contents">
        <div class="sub_top sub_img4">
            <h2>커뮤니티</h2>
            <p>다하미커뮤니케이션즈의 새로운 소식을 확인하세요.</p>
        </div>
        <div class="sub_navi">
            <ul class="sub_navi_li">
                <li class="on"><a href="#new">새소식</a></li>
                <li><a href="#faq">자주 묻는 질문</a></li>
                <li><a href="#call">문의하기</a></li>
            </ul>
        </div>
        <div id="new">
            <div class="new">
                <div class="inner">
                    <h3>새소식</h3>
                    <p>다하미의 다양한 소식 및 공지사항을 알려드립니다.</p>
               </div>
               <div class="search">
                <input type="text" name="searchInput" id="searchInput" value="">
                <a style="cursor: pointer" id="searchTxt">검색</a>
				</div>
               <dl id="boardlst">
               		<c:forEach var="result" items="${boardCdList}" varStatus="status">
						<dt id="dt${status.count}" style="cursor: pointer;">
						<a onclick="evt(${status.count})"><span class="new_tit">${boardCdList[status.count-1].title}</span>
						<span class="new_date">${boardCdList[status.count-1].regdate}</span>
						<span class="new_ico"></span></a></dt>
						<dd id="${status.count}" style='display: none;'>
						<p class="new_contit">${boardCdList[status.count-1].title}<br/>
						<p>${boardCdList[status.count-1].body}</p>
						</p>
						<c:if test="${boardCdList[status.count-1].file1 ne ''}">
							<img src="http://board.scrapmaster.co.kr/files/${boardCdList[status.count-1].file1}" width='900px' />
						</c:if>
						</dd>
					</c:forEach>
               </dl>
               <div class="paging">
                   <ul id="pagination-demo" class="pagination-sm"></ul>
               </div>
                
            </div>
        </div>
        <div id="faq">
            <div class="faq">
                <div class="inner">
                    <h3>자주 묻는 질문</h3>
                    <p>다하미커뮤니케이션즈의서비스에 대해 자주 묻는 질문들 입니다. <br />
                        궁금하신 사항을 선택 해 주세요.</p>
                </div>
                <div class="search">
                	<input type="text" name="searchInput1" id="searchInput1" value="">
                    <a style="cursor: pointer" id="searchTxt1">검색</a> </div>
                <dl id="faqlst">
                    <c:forEach var="result" items="${faqList}" varStatus="status">
						<dt id="faq_dt${status.count}" style="cursor: pointer;" onClick="evt1(${status.count})">
							<span class="faq_date">${faqList[status.count-1].gubun}</span>
							<span class="faq_tit">${faqList[status.count-1].quest}</span>
							<span class="faq_ico"></span>
						</dt>
						<dd id="faq_dd${status.count}" style="display: none;">
						<p class="faq_contit">
							${faqList[status.count-1].quest}<br/>
							<p>${faqList[status.count-1].answer}</p>
						</p>
						</dd>
					</c:forEach>
                </dl>
            </div>
        </div>
        <div id="call">
            <div class="call">
                <div class="inner">
                    <h3>문의하기</h3>
                    <p>제휴 또는 서비스 상담을 원하시면 아래 전화 또는 메일로 연락 주세요.<br>
기타 사항은 질문하기를 이용해 주시면 신속히 안내해드리겠습니다.</p>
                </div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <colgroup><col width="33%"><col width="33%"><col width="34%"></colgroup>
                    <tr>
                        <th scope="col">문의사항</th>
                        <th scope="col">연락처</th>
                        <th scope="col">메일</th>
                    </tr>
                    <tr>
                        <td>매체 제휴</td>
                        <td>02-593-4174 (내선번호 218)</td>
                        <td><a href="mailto:seoski@dahami.com">seoski@dahami.com</a></td>
                    </tr>
                    <tr>
                        <td>서비스 상담</td>
                        <td>02-593-4174 (내선번호 206,220)</td>
                        <td><a href="mailto:kdhmns@dahami.com">kdhmns@dahami.com<br/>khim83@dahami.com</a></td>
                    </tr>
                </table>
                <div class="call_box"> <h3>개인정보 수집 및 이용동의</h3>
                    <div class="agree_box"> <strong>[개인정보 수집 등에 대한 동의]</strong><br>
                        <br>
                        <strong>1. 개인정보 수집 항목 및 목적</strong><br>
                        다하미커뮤니케이션즈는 홈페이지 문의하기에서 질문하기를 통해 질문하신 내용에 대해 관리자가 문의자와 원활히 의사소통 하기 위한 목적으로 아래와 같은 항목을 수집합니다.<br>
: 성명, 연락처, 이메일 주소<br>
                        <br>
                        <strong>2. 개인정보의 보유 및 이용기간</strong><br>
                        : 수집된 개인정보는 보유 및 이용 목적이 완료된 후 즉시 파기됩니다. 또한 ‘문의하기’를 통해 삭제 요청을 하는 경우 3일 이내 파기됩니다.<br>
                        <br>
                        ※ 귀하는 이에 대한 동의를 거부할 수 있으며, 동의하지 않으실 경우 질문하기를 통한 이메일 발송은 불가능함을 알려드립니다.<br>
                        <br>
                    </div>
                    <div class="agree_check"><p>
                        <input id="chk" type="checkbox">
                        <label for="agree">개인정보 수집 및 이용에 동의합니다.</label>
                        </p> </div>
                    <h3>질문하기</h3>
                    <dl>
                        <dt>성명</dt>
                        <dd>
                            <input type="text" id="commuName" />
                        </dd>
                        <dt>연락처</dt>
                        <dd>
                            <input type="text" class="num" id="firNum" maxlength="3" />
                            <span>-</span>
                            <input type="text" class="num" id="midNum" maxlength="4" />
                            <span>-</span>
                            <input type="text" class="num" id="lastNum" maxlength="4" />
                        </dd>
                        <dt>이메일</dt>
                        <dd>
                            <input type="text" class="mail" id="firEmail"/>
                            <span>@</span>
                            <input type="text" class="mail" id="lastEmail"/>
                        </dd>
                        <dt>제목</dt>
                        <dd>
                            <input type="text" id="commuTitle" />
                        </dd>
                        <dt class="main_cont">질문내용</dt>
                        <dd class="main_cont">
                            <textarea id="commuContents"></textarea>
                        </dd>
                    </dl>
                    <div class="call_send"><p>등록</p></div>
                </div>
            </div>
        </div>
    </div>
    <div id="bottom">
    	<jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
