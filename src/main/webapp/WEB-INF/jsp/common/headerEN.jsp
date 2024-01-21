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
		            <div class="btn-ndpt">Shortcut to NDPT<span></span></div>
		        </div>			
		    </a>			
		</div>    	
      <header>
          <h1 class="logo"><a href="<%=request.getContextPath()%>/indexEN.html">dahami</a></h1>
        <nav class="gnb">
            <div class="gnbbg"></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/promise/promiseEN.html">Our Promise</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec1">Media Service Hub</a>
                    <a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec2">Expert Capabilities</a>
                    <a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec3">Customer-First</a>
                </div>
            </div>
            <div class="menu"><a href="<%=request.getContextPath()%>/execution/productEN.html">Execution</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/execution/productEN.html">Risk Management Solutions</a>
                    <a href="<%=request.getContextPath()%>/execution/cultureEN.html">Media Culture Business</a>
                    <a href="<%=request.getContextPath()%>/execution/partnerEN.html">Partnerships</a>
                </div>
            </div>
            <div class="menu new">
                <a href="<%=request.getContextPath()%>/ndpt/ndptEN.html">AI</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/ndpt/ndptEN.html">NDPT</a>
                </div>
            </div>
            <div class="menu"><a href="<%=request.getContextPath()%>/tech/techEN.html">Technology</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/tech/techEN.html">dAIa</a>
                </div>
            </div>
            <div class="menu"><a href="<%=request.getContextPath()%>/news/newsEN.html">News</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/news/newsEN.html">Company News</a>
                    <a href="<%=request.getContextPath()%>/news/instaEN.html">Whatssupnews</a>
                </div>
            </div>
            <div class="menu"><a href="<%=request.getContextPath()%>/company/companyEN.html">Company</a>
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
                        <a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec1" onclick="closeHeader()">Media Service Hub</a>
                        <a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec2" onclick="closeHeader()">Expert Capabilities</a>
                        <a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec3" onclick="closeHeader()">Customer-First</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/execution/productEN.html">Execution</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/execution/productEN.html">Risk Management Solutions</a>
                        <a href="<%=request.getContextPath()%>/execution/cultureEN.html">Media Culture Business</a>
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
                        <a href="<%=request.getContextPath()%>/tech/techEN.html">dAIa</a>
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