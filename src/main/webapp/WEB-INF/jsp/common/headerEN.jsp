<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
		<div class="top-bn">
		    <a href="https://ndpt.dahami.com/en" target="_blank" title="Shortcut to NDPT">
		        <div class="inner">
		            <h1>
		                <p>News data feed service for AI training</p>
		                AI is here, and NDPT is here to help.
		            </h1>
		            <img src="<%=request.getContextPath()%>/images/topbn.png">
		            <div class="btn-ndpt bn-btn">Shortcut to NDPT<span></span></div>
		        </div>			
		    </a>			
		</div>    	
      <header>
          <h1 class="logo"><a href="<%=request.getContextPath()%>/indexEN.html">dahami</a></h1>
        <nav class="gnb">
            <div class="menu"><a href="<%=request.getContextPath()%>/promise/promiseEN.html">Our Promise</a></div>
            <div class="menu new"><a href="<%=request.getContextPath()%>/execution/productEN.html">Service</a></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/ndpt/ndptEN.html">AI</a></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/tech/techEN.html">Technology</a></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/news/newsEN.html">News</a></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/company/companyEN.html">Company</a></div>        
                
            <div class="gnbbg">
            	<div class="gnbover">
            		<div class="gnb_2depth">
            			<p>Our Promise</p>
            			<a href="<%=request.getContextPath()%>/promise/promiseEN.html">Our Promise</a>
            		</div>
            		<div class="gnb_2depth">
		            	<p>Service</p>
		            	<a href="<%=request.getContextPath()%>/execution/productEN.html">Risk Management Solutions</a>
		                <div class="gnb_3depth">
		                    <a href="<%=request.getContextPath()%>/execution/product_sub/scrapmasterEN.html">Scrapmaster</a>
		                    <a href="<%=request.getContextPath()%>/execution/product_sub/expert.htmlEN">Expert</a>
		                    <a href="<%=request.getContextPath()%>/execution/product_sub/clippingonEN.html">Clippingon</a>
		                    <a href="<%=request.getContextPath()%>/execution/product_sub/newsplazaEN.html">Newsplaza</a>
		                </div>
		                <a href="<%=request.getContextPath()%>/execution/cultureEN.html">Media Culture Business</a>
		                <div class="gnb_3depth">
		                    <a href="<%=request.getContextPath()%>/execution/culture_sub/tpaperEN.html">Tpaper</a>
		                    <a href="<%=request.getContextPath()%>/execution/culture_sub/newsbankEN.html">Newsbank</a>
		                    <a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank_nytEN.html" class="new">NYT X Newsbank</a>
		                    <a href="<%=request.getContextPath()%>/execution/culture_sub/enie.htmlEN">e-NIE</a>
		                </div>
		                <a href="<%=request.getContextPath()%>/execution/partnerEN.html">Partnerships</a>
		            </div>
		            <div class="gnb_2depth">
		            	<p>AI</p>
		                <a href="<%=request.getContextPath()%>/ndpt/ndptEN.html">NDPT</a>
		            </div>
		            <div class="gnb_2depth">
		            	<p>Technology</p>
		                <a href="<%=request.getContextPath()%>/tech/techEN.html">Technology</a>
		            </div>
					<div class="gnb_2depth">
						<p>News</p>
					    <a href="<%=request.getContextPath()%>/news/newsEN.html">Company News</a>
					    <a href="<%=request.getContextPath()%>/news/instaEN.html">Whatssupnews</a>
					</div>
					<div class="gnb_2depth">
						<p>Company</p>
					    <a href="<%=request.getContextPath()%>/company/companyEN.html">About Us</a>
					    <a href="<%=request.getContextPath()%>/company/recruitEN.html">Careers</a>
					    <a href="<%=request.getContextPath()%>/company/faqEN.html">FAQ</a>
					    <a href="<%=request.getContextPath()%>/company/qnaEN.html">Contact Us</a>
					</div>
            	</div>
            </div>
        </nav>
        <div class="util">
            <a href="https://www.scrapmaster.co.kr" target="_blank">ScrapMaster</a>
            <a href="<%=request.getContextPath()%>/company/qnaEN.html" target="_blank">Contact Us</a>
         <div class="lang">
            <a href="javascript:void(0)">Language</a>
             <ul>
                 <li class="" onclick="languageChange('KR')">KR</li>
                 <li class="on" onclick="languageChange('EN')">EN</li>
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
                 <li class="" onclick="languageChange('KR')">KR</li>
                 <li class="on" onclick="languageChange('EN')">EN</li>
             </ul>
         </div>            
            <div class="gnb_close" onclick="gnbclose()">
                <span></span>
                <span></span>
            </div>
            <nav class="gnb_mo_nav">
                <div class=""><a href="<%=request.getContextPath()%>/promise/promiseEN.html">Our Promise</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/promise/promiseEN.html">Our Promise</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/execution/productEN.html">Execution</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/execution/productEN.html">Risk Management Solutions</a>
                        <div class="gnb_3depth">                        
	                        <a href="<%=request.getContextPath()%>/execution/product_sub/scrapmasterEN.html">Scrapmaster</a>
	                        <a href="<%=request.getContextPath()%>/execution/product_sub/expertEN.html">Expert</a>
	                        <a href="<%=request.getContextPath()%>/execution/product_sub/clippingonEN.html">Clippingon</a>
	                        <a href="<%=request.getContextPath()%>/execution/product_sub/newsplazaEN.html">newsplaza</a>
                        </div>
                        <a href="<%=request.getContextPath()%>/execution/cultureEN.html">Media Culture Business</a>
                        <div class="gnb_3depth">                        
	                        <a href="<%=request.getContextPath()%>/execution/culture_sub/tpaperEN.html">Tpaper</a>
	                        <a href="<%=request.getContextPath()%>/execution/culture_sub/newsbankEN.html">Newsbank</a>
	                        <a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank_nytEN.html" class="new">NYT X Newsbank</a>
	                        <a href="<%=request.getContextPath()%>/execution/culture_sub/enieEN.html">e-NIE</a>
                        </div>
                        <a href="<%=request.getContextPath()%>/execution/partnerEN.html">Partnerships</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/ndpt/ndptEN.html">AI</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/ndpt/ndptEN.html">NDPT</a>
                    </div>
                </div>                
                <div class=""><a href="<%=request.getContextPath()%>/tech/techEN.html">Technology</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/tech/techEN.html">Technology</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/news/newsEN.html">News</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/news/newsEN.html">Compnay News</a>
                        <a href="<%=request.getContextPath()%>/news/instaEN.html">Whatssupnews</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/company/companyEN.html">Company</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/company/companyEN.html">About Us</a>
                        <a href="<%=request.getContextPath()%>/company/recruitEN.html">Careers</a>
                        <a href="<%=request.getContextPath()%>/company/faqEN.html">FAQ</a>
                        <a href="<%=request.getContextPath()%>/company/qnaEN.html">Contact Us</a>
                    </div>
                </div>
            </nav>

            <div class="util">
                <a href="https://www.scrapmaster.co.kr" target="_blank">ScrapMaster</a>
                <a href="<%=request.getContextPath()%>/company/qnaEN.html" target="_blank">Contact Us</a>
            </div>

        </div>
    </header>
	<script>
	    function closeHeader() {
	        if ($('.gnb_mo').hasClass('on')) {
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