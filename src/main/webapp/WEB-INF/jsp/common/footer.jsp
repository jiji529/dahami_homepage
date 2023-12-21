<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="bn-float">
        <h1>AI 학습을 위한 뉴스 데이터 공급 서비스</h1>
        <h2>AI의 시작,<br>
            NDPT가 함께 합니다.</h2>
        <a class="btn-ndpt" href="https://ndpt.dahami.com" target="_blank" title="NDPT 바로가기">NDPT 바로가기<span></span></a>

        <div class="float-close" onclick="closeNDPTBanner()"><p>X</p></div>
    </div>

    <footer>
        <div class="inner">
            <div class="f_top">
                <div class="f_logo">
                    <span class="f_logo_img">dahami</span>
                    <span class="f_logo_slogan">모든 뉴스를 내 손안에, 다하미커뮤니케이션즈</span>
                </div>
                <div class="f_gnb">
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/promise/promise.html">약속</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/promise/promise.html#sec1">미디어 허브</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/promise/promise.html#sec2">전문가 역량</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/promise/promise.html#sec3">고객가치 우선</a></dd>

                    </dl>
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/execution/product.html">실행</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/execution/product.html">위기관리 솔루션</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/execution/culture.html">미디어 문화 사업</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/execution/partner.html">파트너쉽</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/tech/tech.html">기술</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/tech/tech.html#">dAIa</a></dd>

                    </dl>
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/news/news.html">뉴스</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/news/news.html">회사소식</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/news/insta.html">왓썹뉴스</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="<%=request.getContextPath()%>/company/company.html">회사</a></dt>
                        <dd><a href="<%=request.getContextPath()%>/company/company.html">회사소개</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/company/recruit.html">채용</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/company/faq.html">자주 묻는 질문</a></dd>
                        <dd><a href="<%=request.getContextPath()%>/company/qna.html">문의하기</a></dd>
                    </dl>
                </div>
            </div>
            <div class="f_bottom">
                <div class="f_copy">Copyright ⓒ DAHAMI Corp. All Rights Reserved.</div>
                <div class="f_link">
                	<a href="javascript:void(0)">개인정보처리방침</a>
                	<a href="<%=request.getContextPath()%>/company/qna.html">제휴·서비스 문의</a>
                </div>
            </div>
            <div class="f_family">
                <div class="f_tit">Family sites</div>
                <div class="f_li"><a href="http://www.scrapmaster.co.kr" target="_blank">스크랩마스터</a></div>
                <div class="f_li"><a href="http://www.clippingon.co.kr" target="_blank">클리핑온</a></div>
                <div class="f_li"><a href="http://www.t-paper.co.kr" target="_blank">티페이퍼</a></div>
                <div class="f_li"><a href="http://www.newsbank.co.kr" target="_blank">뉴스뱅크</a></div>
                <div class="f_li"><a href="http://news-plaza.com/" target="_blank">뉴스플라자</a></div>
            </div>
            <div id="pop1" style="display:none;">
				<div class="pop_bg"></div>
				<div class="pop_layer pop_1">
					<h1 style="text-align:center;">개인정보처리방침</h1>
					<div class="pop_wrap">
						<div class="pop_close">
							<p>닫기</p>
						</div>
						<div class="pop_cont">
							<iframe style="width:100%;" src="<%=request.getContextPath()%>/common/policy.jsp" id="iframePrivacy"></iframe>
						</div>
						<div class="pop_ok">
							<p style="text-align:center;">확인</p>
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
		
		function closeNDPTBanner() {
			$('.bn-float').css('display','none');
		}
    </script>