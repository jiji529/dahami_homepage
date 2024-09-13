<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
    <div class="bn-wrap" id="bn">
        <div class="float-close" onclick="closeBanner()">
            <p>X</p>
        </div>
        <div class="bn-float bn-nyt" id="bn1">
            <h1>Every second in the world, in the Newsbank</h1>
            <h2>Buy a global press photo for the New York Times, one of the top three U.S. daily newspapers</h2>
            <a class="bn-btn btn-nyt" href="https://providers-nyt.newsbank.co.kr" target="_blank" title="뉴욕타임스 뉴스뱅크 바로가기">뉴욕타임스 뉴스뱅크 바로가기<span></span></a>

        </div>

        <div class="bn-float bn-ndpt" id="bn2">
            <h1>News data feed service for AI training</h1>
            <h2>AI is here, <br>and NDPT is here to help.</h2>
            <a class="bn-btn btn-ndpt" href="https://ndpt.dahami.com/en" target="_blank" title="NDPT 바로가기">Shortcut to NDPT<span></span></a>

        </div>

        <div class="bn-ft" onclick="closeBannerPop()">
            <p>Prevent for the day</p>
        </div>
    </div>    
    <footer>
        <div class="inner">
            <div class="f_top">
                <div class="f_logo">
                    <span class="f_logo_img">dahami</span>
                    <span class="f_logo_slogan">All the news in the palm of your hand, <br>Dahami Communications</span>
                </div>
                <div class="f_gnb">
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/promise/promiseEN.html">Our Promise</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec1">Media Service Hub</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec2">Expert Capabilities</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/promise/promiseEN.html#sec3">Customer-First</a></dd>

                    </dl>
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/execution/productEN.html">Execution</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/execution/productEN.html">Risk Management Solutions</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/execution/cultureEN.html">Media Culture Business</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/execution/partnerEN.html">Partnerships</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/ndpt/ndptEN.html">AI</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/ndpt/ndptEN.html">NDPT</a></dd>

                    </dl>                    
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/tech/techEN.html">Technology</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/tech/techEN.html#">dAIa</a></dd>

                    </dl>
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/news/newsEN.html">News</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/news/newsEN.html">Compnay News</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/news/instaEN.html">Whatssupnews</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/company/companyEN.html">Company</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/company/companyEN.html">About Us</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/company/recruitEN.html">Careers</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/company/faqEN.html">FAQ</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/company/qnaEN.html">Contact Us</a></dd>
                    </dl>
                </div>
            </div>
            <div class="f_bottom">
                <div class="f_copy">Copyright Dahami Communications Inc. All Rights Reserved.</div>
                <div class="f_link">
                	<a href="javascript:void(0)">Privacy Policy</a>
                	<a href="<%=request.getContextPath()%>/company/qnaEN.html">Partnerships &#38; Services</a>
                </div>
            </div>
            <div class="f_family">
                <div class="f_tit">Family sites</div>
                <div class="f_li"><a href="https://www.scrapmaster.co.kr/" target="_blank" title="Shortcut to ScrapMaster">ScrapMaster</a></div>
                <div class="f_li"><a href="http://www.clippingon.co.kr" target="_blank" title="Shortcut to ClippingON">ClippingON</a></div>
                <div class="f_li"><a href="https://www.t-paper.co.kr/" target="_blank" title="Shortcut to T-Paper">T-Paper</a></div>
                <div class="f_li"><a href="https://www.newsbank.co.kr/" target="_blank" title="Shortcut to Newsbank">Newsbank</a></div>
                <div class="f_li"><a href="https://providers-nyt.newsbank.co.kr" target="_blank" title="Shortcut to NYT X Newsbank">NYT X Newsbank</a></div>
                <div class="f_li"><a href="https://news-plaza.com/" target="_blank" title="Shortcut to NewsPlaza">NewsPlaza</a></div>
                <div class="f_li"><a href="https://ndpt.dahami.com/en" target="_blank" title="Shortcut to NDPT">NDPT</a></div>
            </div>
            <div id="pop1" style="display:none;">
				<div class="pop_bg"></div>
				<div class="pop_layer pop_1">
					<h1 style="text-align:center;">Privacy Policy</h1>
					<div class="pop_wrap">
						<div class="pop_close">
							<p>Close</p>
						</div>
						<div class="pop_cont">
							<iframe style="width:100%;" src="<%=request.getContextPath()%>/common/policy.jsp" id="iframePrivacy"></iframe>
						</div>
						<div class="pop_ok">
							<p style="text-align:center;">Close</p>
						</div>
					</div>
				</div>
			</div>        
        </div>
    </footer>
    <div class="top"><a href="#">top</a></div>
    
    <script>
	    $('.f_link > a:eq(0)').on('click', function(e) {
			$("#pop1").css('display','block');
		});
	    
	    $('.pop_close').on('click', function(e) {
			$("#pop1").css('display','none');
		});
		
		$('.pop_ok p').on('click', function(e) {
			$("#pop1").css('display','none');
		});
		
		function closeBanner() {
			$('.bn-wrap').css('display','none');
		}
    </script>