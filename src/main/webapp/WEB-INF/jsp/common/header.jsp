<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <div class="top-bn">
        <a href="https://ndpt.dahami.com" target="_blank" title="NDPT 바로가기">
            <div class="inner">
                <h1>
                    <p>AI 학습을 위한 뉴스 데이터 공급 서비스</p>
                    AI의 시작, NDPT가 함께 합니다.
                </h1>
                <img src="<%=request.getContextPath()%>/images/topbn.png">
                <div class="btn-ndpt bn-btn">NDPT 바로가기<span></span></div>
            </div>

        </a>		
    </div>    	   		
    <header>
        <h1 class="logo"><a href="<%=request.getContextPath()%>/index.html">dahami</a></h1>
        <nav class="gnb">
			<div class="menu"><a href="<%=request.getContextPath()%>/promise/promise.html">약속</a></div>
            <div class="menu new"><a href="<%=request.getContextPath()%>/execution/product.html">서비스</a></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/ndpt/ndpt.html">AI</a></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/tech/tech.html">기술</a></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/news/news.html">뉴스</a></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/company/company.html">회사</a></div>        
        
            <div class="gnbbg">
            	<div class="gnbover">
            		<div class="gnb_2depth">
            			<p>약속</p>
            			<a href="<%=request.getContextPath()%>/promise/promise.html">약속</a>
            		</div>
            		<div class="gnb_2depth">
		            	<p>서비스</p>
		            	<a href="<%=request.getContextPath()%>/execution/product.html">위기관리 솔루션</a>
		                <div class="gnb_3depth">
		                    <a href="<%=request.getContextPath()%>/execution/product_sub/scrapmaster.html">스크랩마스터</a>
		                    <a href="<%=request.getContextPath()%>/execution/product_sub/expert.html">전문가 서비스</a>
		                    <a href="<%=request.getContextPath()%>/execution/product_sub/clippingon.html">클리핑온</a>
		                    <a href="<%=request.getContextPath()%>/execution/product_sub/newsplaza.html">뉴스플라자</a>
		                </div>
		                <a href="<%=request.getContextPath()%>/execution/culture.html">미디어 문화 사업</a>
		                <div class="gnb_3depth">
		                    <a href="<%=request.getContextPath()%>/execution/culture_sub/tpaper.html">티페이퍼</a>
		                    <a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank.html">뉴스뱅크</a>
		                    <a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank_nyt.html" class="new">뉴욕타임스 X 뉴스뱅크</a>
		                    <a href="<%=request.getContextPath()%>/execution/culture_sub/enie.html">e-NIE</a>
		                </div>
		                <a href="<%=request.getContextPath()%>/execution/partner.html">파트너쉽</a>
		            </div>
		            <div class="gnb_2depth">
		            	<p>AI</p>
		                <a href="<%=request.getContextPath()%>/ndpt/ndpt.html">NDPT</a>
		            </div>
		            <div class="gnb_2depth">
		            	<p>기술</p>
		                <a href="<%=request.getContextPath()%>/tech/tech.html">기술</a>
		            </div>
					<div class="gnb_2depth">
						<p>뉴스</p>
					    <a href="<%=request.getContextPath()%>/news/news.html">회사소식</a>
					    <a href="<%=request.getContextPath()%>/news/insta.html">왓썹뉴스</a>
					</div>
					<div class="gnb_2depth">
						<p>회사</p>
					    <a href="<%=request.getContextPath()%>/company/company.html">회사소개</a>
					    <a href="<%=request.getContextPath()%>/company/recruit.html">채용</a>
					    <a href="<%=request.getContextPath()%>/company/faq.html">자주 묻는 질문</a>
					    <a href="<%=request.getContextPath()%>/company/qna.html">문의하기</a>
					</div>
            	</div>
            </div>            
        </nav>
        <div class="util">
            <a href="https://www.scrapmaster.co.kr" target="_blank">스크랩마스터</a>
            <a href="<%=request.getContextPath()%>/company/qna.html" target="_blank">문의하기</a>
            <div class="lang">
               <a href="javascript:void(0)">언어</a>
                <ul>
                    <li class="on" onclick="languageChange('KR')">KR</li>
                    <li class="" onclick="languageChange('EN')">EN</li>
                </ul>
            </div>		            
        </div>

        <div class="gnb_btn" onclick="gnb()">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <div class="gnb_mo" id="gnb_mo">
            <div class="lang">
                <ul>
                    <li class="on" onclick="languageChange('KR')">KR</li>
                    <li class="" onclick="languageChange('EN')">EN</li>
                </ul>
            </div>		        
            <div class="gnb_close" onclick="gnbclose()">
                <span></span>
                <span></span>
            </div>
            <nav class="gnb_mo_nav">            	
                <div class=""><a href="<%=request.getContextPath()%>/promise/promise.html">약속</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/promise/promise.html">약속</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/execution/product.html">실행</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/execution/product.html">위기관리 솔루션</a>
                        <div class="gnb_3depth">                        
	                        <a href="<%=request.getContextPath()%>/execution/product_sub/scrapmaster.html">스크랩마스터</a>
	                        <a href="<%=request.getContextPath()%>/execution/product_sub/expert.html">전문가 서비스</a>
	                        <a href="<%=request.getContextPath()%>/execution/product_sub/clippingon.html">클리핑온</a>
	                        <a href="<%=request.getContextPath()%>/execution/product_sub/newsplaza.html">뉴스플라자</a>
                        </div>
                        <a href="<%=request.getContextPath()%>/execution/culture.html">미디어 문화 사업</a>
                        <div class="gnb_3depth">                        
	                        <a href="<%=request.getContextPath()%>/execution/culture_sub/tpaper.html">티페이퍼</a>
	                        <a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank.html">뉴스뱅크</a>
	                        <a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank_nyt.html" class="new">뉴욕타임스 X 뉴스뱅크</a>
	                        <a href="<%=request.getContextPath()%>/execution/culture_sub/enie.html">e-NIE</a>
                        </div>
                        <a href="<%=request.getContextPath()%>/execution/partner.html">파트너쉽</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/ndpt/ndpt.html">AI</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/ndpt/ndpt.html">NDPT</a>
                    </div>
                </div>                
                <div class=""><a href="<%=request.getContextPath()%>/tech/tech.html">기술</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/tech/tech.html">기술</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/news/news.html">뉴스</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/news/news.html">회사소식</a>
                        <a href="<%=request.getContextPath()%>/news/insta.html">왓썹뉴스</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/company/company.html">회사</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/company/company.html">회사소개</a>
                        <a href="<%=request.getContextPath()%>/company/recruit.html">채용</a>
                        <a href="<%=request.getContextPath()%>/company/faq.html">자주 묻는 질문</a>
                        <a href="<%=request.getContextPath()%>/company/qna.html">문의하기</a>
                    </div>
                </div>
            </nav>

        <div class="util">
            <a href="https://www.scrapmaster.co.kr" target="_blank">스크랩마스터</a>
            <a href="<%=request.getContextPath()%>/company/qna.html" target="_blank">문의하기</a>		            
        </div>

        </div>
    </header>    		
    <script>
    	function closeHeader() {
    		if($('.gnb_mo').hasClass('on')) {
    			$('.gnb_mo').removeClass('on');
    			$('body').removeClass('scroll_hidden');
    		}
    	}    
    	
		var langElement = document.querySelector('.lang');
		
		langElement.onmouseover = function() {
		  langElement.classList.add('active');
		};
		
		langElement.onmouseout = function(e) {
		  if (!e.relatedTarget || !e.relatedTarget.closest('.lang')) {
		    langElement.classList.remove('active');
		  }
		};    	
    </script>