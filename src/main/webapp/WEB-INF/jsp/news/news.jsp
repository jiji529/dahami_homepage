<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
				<span class="location_list">회사소식</span>
			</li>
		</ul>
        <div class="inner">
            <h2>뉴스</h2>
            <div class="tab">
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/news/news.html">회사소식</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/news/insta.html">왓썹뉴스</a></div>
            </div>
        </div>
    </section>


    <section class="sub_news">
        <div class="inner">
            <div class="news_top">
                <div class="news_count">총 <span id="totcnt">${totcnt}</span>개</div>
                <div class="search">
                    <input type="text" name="searchInput" id="searchInput" value="" placeholder="검색어를 입력해주세요" onkeyup="enterkey()">
                    <button id="searchTxt" onclick="searchNews()">검색</button>
                </div>
            </div>
            <div class="m_news">
            	<ul id="m_news_sub">
	            	<c:forEach var="result" items="${boardCdList}" varStatus="status">
							<li id="dt${status.count}" style="cursor: pointer;" onclick="evt(${status.count})">
		                        <span class="date">${boardCdList[status.count-1].regdate}</span>
		                        <span class="tit">${boardCdList[status.count-1].title}</span>
		                    </li>																				
							<li class="faq_dd" id="dd${status.count}" style='display: none;'>
								<p class="faq_contit">${boardCdList[status.count-1].title}</p>
								<p>${boardCdList[status.count-1].body}</p>
								<c:if test="${boardCdList[status.count-1].file1 ne ''}">
									<img src="http://board.scrapmaster.co.kr/files/${boardCdList[status.count-1].file1}" style="width:70%;"/>
								</c:if>
								<c:if test="${boardCdList[status.count-1].file2 ne ''}">
									<img src="http://board.scrapmaster.co.kr/files/${boardCdList[status.count-1].file2}" style="width:70%;"/>																	
								</c:if>
							</li>
					</c:forEach>
				</ul>                
                <div class="btn_area"><button class="btn btn_bk" onclick="loadMoreNews('1')">더보기</button></div>
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
        
		function enterkey() {
			if (window.event.keyCode == 13) {
		    	// 엔터키가 눌렸을 때
				searchNews();
		    }
		}
        
        // 새소식 클릭시 반응
		function evt(newwin){
			var objid=document.getElementById("dd"+newwin);
		
			//class='on'
		
			if(objid.style.display=="block")
			{
			  objid.style.display="none";
			  $("#dt"+newwin).removeClass();
			}
			else{
			  $("#dd"+newwin).css('display','none');
			  $("#dt"+newwin).removeClass();
			  objid.style.display="block";
			  $("#dt"+newwin).addClass("on");
			}
		}
        
		var page = 1;
		var between = 10;
        
     	// 자주 묻는질문 추가로딩
        function loadMoreNews(page){
        	page = page;
        	var question = $('#searchInput').val();
        	
        	$.ajax({
	        	type : "GET",          
			    url : "<%=request.getContextPath()%>/news/loadMoreNews.html",      
			    data: {
			    	page: page,
			    	question : question
			    },
			    dataType : "json",
			    contentType : 'application/json; charset=utf-8',
				cache : false,
			    success : renderNews
        	});
        }
     	
     	// 자주 묻는질문 검색기능
     	function searchNews() {
     		page = 0;
        	var question = $('#searchInput').val();
        	
        	$.ajax({
	        	type : "GET",          
			    url : "<%=request.getContextPath()%>/news/loadMoreNews.html",      
			    data: {
			    	page: page,
			    	question : question
			    },
			    dataType : "json",
			    contentType : 'application/json; charset=utf-8',
				cache : false,
			    success : renderSearchNews
        	});
     	}
     	
     	// 자주 묻는질문 검색 랜더링
    	function renderSearchNews(json) {
    		var html = "";
    		
    		var html = "";
  			if(json.length!=0) {  				    		
		    	for(var i=0; i<json.length; i++) {
		    		var index = parseInt(json[i].page) + (i+1); 
	    			html += '<li id="dt'+index+'" style="cursor: pointer;" onclick="evt('+index+')">';
	    			html += '<span class="date">'+json[i].regdate+'</span>';
	    			html += '<span class="tit">'+json[i].title+'</span>';
	    			html += '</li>';
	    			html += '<li class="faq_dd" id="dd'+index+'" style="display: none;">';
	    			html += '<p>'+json[i].body+'</p>';
	    			if(json[i].file1 != '') {
	    				html += '<img src="http://board.scrapmaster.co.kr/files/'+json[i].file1+'" style="width:70%;"/>';
	    			}
	    			
					if(json[i].file2 != '') {
						html += '<img src="http://board.scrapmaster.co.kr/files/'+json[i].file2+'" style="width:70%;"/>';
	    			}
	    			html += '</li>';	    			
	    		}  		
				$('#m_news_sub').html(html);
				$('#totcnt').text(json[0].totcnt);
				
				page++;
				
				if(json.length < between) {
					$('.btn_area').css('display',"none");	
				} else {
					$('.btn_area').css('display',"block");	
					$('.btn_bk').attr('onclick','loadMoreNews(\''+page+'\')');
				}
  			} else {
  				html += '<li><span>검색어와 관련된 질문이 없습니다.</span></li>';
  				$('#m_news_sub').html(html);
  				$('.btn_area').css('display',"none");
  				$('#totcnt').text("0");
  			}
    	}
     	
     	// 자주 묻는질문 랜더링
    	function renderNews(json) {
    		var html = "";
    		
    		var html = "";
  			if(json.length!=0) {  				    		
		    	for(var i=0; i<json.length; i++) {
		    		var index = parseInt(json[i].page) + (i+1); 
	    			html += '<li id="dt'+index+'" style="cursor: pointer;" onclick="evt('+index+')">';
	    			html += '<span class="date">'+json[i].regdate+'</span>';
	    			html += '<span class="tit">'+json[i].title+'</span>';
	    			html += '</li>';
	    			html += '<li class="faq_dd" id="dd'+index+'" style="display: none;">';
	    			html += '<p>'+json[i].body+'</p>';
	    			if(json[i].file1 != '') {
	    				html += '<img src="http://board.scrapmaster.co.kr/files/'+json[i].file1+'" style="width:70%;"/>';
	    			}
	    			
					if(json[i].file2 != '') {
						html += '<img src="http://board.scrapmaster.co.kr/files/'+json[i].file2+'" style="width:70%;"/>';
	    			}
	    			html += '</li>';	            	
	    		}  		
				$('#m_news_sub').append(html);
				
				page++;
				
				if(json.length < between) {
					$('.btn_area').css('display',"none");	
				} else {
					$('.btn_area').css('display',"block");	
					$('.btn_bk').attr('onclick','loadMoreNews(\''+page+'\')');
				}
  			} else {
  				$('.btn_area').css('display',"none");
  			}
    	}
    </script>
</html>