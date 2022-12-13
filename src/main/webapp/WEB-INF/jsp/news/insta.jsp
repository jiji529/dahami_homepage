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
            <h2>뉴스</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/news/news.html">회사소식</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/news/insta.html">왓썹뉴스</a></div>
            </div>
        </div>
    </section>


    <section class="sub_news">
        <div class="inner">
            <div class="sub_tit">
                <h3>왓썹뉴스</h3>
            </div>
            <p class="sub_txt">내일을 읽는 뉴스를 소개합니다.</p>
            <div class="m_card">
                <div class="m_card_sub">                
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
    
	var insta_index = 0;
    
    $(document).ready(function() {
	    	$.ajax({
	        	type : "GET",          
			    url : "<%=request.getContextPath()%>/loadInstaData.html",      
			    data: "",
			    dataType : "json",
			    contentType : 'application/json; charset=utf-8',
				cache : false,
			    success : RenderInsta,
			    error : RenderInsta
	    	});
	    	
	    	function RenderInsta(json) {
	    		var html = '';
				html += '<ul>';
				var index = 0;												
				for(var i=0; i<json.length; i++) {	
					for(var j=0; j<json[i].data.length; j++) {
						insta_index = parseInt(index/6);
						if(insta_index==0) {
							html += '<li class="insta_'+insta_index+'"><a href='+json[i].data[j].permalink+' target="_blank"><img src='+json[i].data[j].media_url+'></a></li>';
						} else {
							html += '<li class="insta_'+insta_index+'" style="display:none;"><a href='+json[i].data[j].permalink+' target="_blank"><img src='+json[i].data[j].media_url+'></a></li>';							
						}
						index++;						
					}
				}
				html += '</ul>';					
		        $('.m_card_sub').html(html);
		        
	        	var btnHtml = "";
	        	btnHtml += '<div class="btn_area"><button class="btn btn_bk" onclick="loadMoreInsta(\''+1+'\')">더보기</button></div>';
	        	$('.m_card').append(btnHtml);
	    	}        	      		    	    
        })
        function loadMoreInsta(nextPage) {
	    		$('.insta_'+nextPage).css('display','block');	    		
	    		if(insta_index!=parseInt(nextPage)) {
		    		$('.btn_bk').attr('onclick','loadMoreInsta(\''+(parseInt(nextPage)+1)+'\')');	    			
	    		} else {
	    			$('.btn_area').remove();
	    		}
	    	}
</script>

</html>