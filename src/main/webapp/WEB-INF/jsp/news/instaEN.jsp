<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<jsp:include page="../common/head_metaEN.jsp"/>
</head>

<body>
    <jsp:include page="../common/headerEN.jsp"/>

    <section class="sublist_area">
		<ul class="location">
			<li>
				<a href="<%=request.getContextPath()%>/indexEN.html" class="location_list">HOME</a>
			</li>
			<li>
				<span class="location_list">Whatssupnews</span>
			</li>
		</ul>
        <div class="inner">
            <h2>News</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/news/newsEN.html">Company News</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/news/instaEN.html">Whatssupnews</a></div>
            </div>
        </div>
    </section>


    <section class="sub_news">
        <div class="inner">
            <div class="sub_tit">
                <h3>Whatssupnews</h3>
            </div>
            <p class="sub_txt">"Introducing news that can reads tomorrow.<br>
Search for <b>'whatssupnews'</b> on Instagram."
</p>
            <div class="m_card">
                <div class="m_card_sub">                
                </div>
            </div>
        </div>
    </section>



    <jsp:include page="../common/footerEN.jsp"/>


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
							html += '<li class="insta_'+insta_index+'"><a id="instaLink'+index+'" href='+json[i].data[j].permalink+' target="_blank"><img id="insta'+index+'" src='+json[i].data[j].media_url+' onerror="noImage(\''+index+'\')"></a></li>';							
						} else {
							html += '<li class="insta_'+insta_index+'" style="display:none;"><a id="instaLink'+index+'" href='+json[i].data[j].permalink+' target="_blank"><img id="insta'+index+'" data-src='+json[i].data[j].media_url+' onerror="noImage(\''+index+'\')"></a></li>';							
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
    		for(var i=0; i<$('.insta_'+nextPage+'').children().children().length; i++) {
    			// 더보기를 눌렀을때는 data-src > src로 값을 옮겨와서 그때마다 이미지를 다운받는 방식으로 변경함
    			// 그렇게 바꾸는 이유는 초기에 만약 이미지의 문제가있어 디폴트 이미지를 불러오는 경우, 추가로 이미지들을 다 안받아오게 하기 위함
    			$('.insta_'+nextPage+'').children().children()[i].src = $('.insta_'+nextPage+'').children().children()[i].dataset.src;
    		}
	    	$('.insta_'+nextPage).css('display','block');	    		
	    	if(insta_index!=parseInt(nextPage)) {
		    	$('.btn_bk').attr('onclick','loadMoreInsta(\''+(parseInt(nextPage)+1)+'\')');	    			
	    	} else {
	    		$('.btn_area').remove();
	    	}
	    }
	    
		function noImage(i) {
        	// 이미지가 문제가 생길경우, 디폴트 이미지를 보여주기 위한 예외처리
        	if(i>=0 && i<=5) {
        		var instaURL = ["https://www.instagram.com/p/Cms8Akdy25W/","https://www.instagram.com/p/CmcwKAKyDbp/",
        			"https://www.instagram.com/p/CmaLCAUvo9J/","https://www.instagram.com/p/CmLj4S_SCdX/",
        			"https://www.instagram.com/p/Cl7TYsRyiy7/","https://www.instagram.com/p/ClUwC99ykUJ/"];
	        	$('#insta'+i+'').attr('src','/images/insta'+i+'.jpg');
	        	$('#instaLink'+i+'').attr('href',instaURL[i]);
	        	
	        	// 마지막으로 더보기 링크를 인스타쪽 링크로 변경한다.
	        	if($('.btn_bk').attr('onclick').includes("loadMoreInsta")==true) {
		        	$('.btn_bk').attr('onclick','linkToInsta()');        		
	        	}
        	}        	
        }
	    
	    function linkToInsta() {
	    	// 이미지에 문제가 있을 경우엔, 더보기를 눌렀을때 인스타페이지로 이동시킨다.
	    	window.open("https://www.instagram.com/whatssupnews/");
	    }
</script>

</html>