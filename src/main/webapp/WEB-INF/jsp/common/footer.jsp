<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="footer">
	<div class="foot_lt">COPYRIGHT DAHAMI COMMUNICATIONS ALL RIGHTS RESERVED.
		<!--© 2016. ㈜다하미커뮤니케이션즈 all rights reserved.-->
	</div>
	<div class="foot_rt">
		<ul class="foot_menu">
			<li class="color">개인정보처리방침</li>
			<li>사이트맵</li>
		</ul>
		<div id="family_site">
			<div id="select-title">주요 서비스 바로가기</div>
			<div id="select-layer" style="display: none;">
				<ul class="site-list">
					<li><a href="http://scrapmaster.co.kr/" target="_blank">스크랩마스터</a></li>
					<li><a href="http://clippingon.co.kr/" target="_blank">클리핑온</a></li>
					<li><a href="http://www.t-paper.co.kr/" target="_blank">티페이퍼</a></li>
					<li><a href="http://forme.or.kr/" target="_blank">e-NIE</a></li>
					<li><a href="http://www.newsbank.co.kr/" target="_blank">뉴스뱅크</a></li>
					<li><a href="http://www.news-plaza.co.kr" target="_blank">뉴스플라자</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="top"><a href="#">Top</a></div>
<div id="pop1" style="display:none;">
	<div class="pop_bg"></div>
	<div class="pop_layer pop_1">
		<h1>개인정보처리방침</h1>
		<div class="pop_wrap">
			<div class="pop_close">
				<p>닫기</p>
			</div>
			<div class="pop_cont">
				<iframe width="100%" src="/common/policy.jsp" id="iframePrivacy"></iframe>
			</div>
			<div class="pop_ok">
				<p>확인</p>
			</div>
		</div>
	</div>
</div>
<div id="pop2" style="display:none;">
	<div class="pop_bg"></div>
	<div class="pop_layer pop_1">
		<h1>사이트맵</h1>
		<div class="pop_wrap">
			<div class="pop_close">
				<p>닫기</p>
			</div>
			<div class="pop_cont">
				<dl class="sitemap">
					<dt>회사소개</dt>
					<dd>
						<div class="box_line"></div>
					</dd>
					<dd><a href="/company/company.html?loc=intros">다하미소개</a></dd>
					<dd><a href="/company/company.html?loc=history">연혁</a></dd>
					<dd><a href="/company/company.html?loc=map">오시는 길</a></dd>
				</dl>
				<dl class="sitemap">
					<dt>서비스소개</dt>
					<dd>
						<div class="box_line"></div>
					</dd>
					<dd><a href="/service/scrapmaster.html">스크랩마스터</a></dd>
					<dd><a href="/service/clipping.html">클리핑온</a></dd>
					<dd><a href="/service/tpaper.html">티페이퍼</a></dd>
					<dd><a href="/service/newsbank.html">뉴스뱅크</a></dd>
					<dd><a href="/service/enie.html">e-NIE</a></dd>
					<dd><a href="/service/newsplaza.html">뉴스플라자</a></dd>
					<dd><a href="/service/webapp.html">웹&amp;앱 서비스</a></dd>
				</dl>
				<dl class="sitemap">
					<dt>인재경영</dt>
					<dd>
						<div class="box_line"></div>
					</dd>
					<dd><a href="/recruit/recruit.html?loc=talent">인재상</a></dd>
					<dd><a href="/recruit/recruit.html?loc=employ">채용전형</a></dd>
					<dd><a href="/recruit/recruit.html?loc=welfare">복리후생</a></dd>
				</dl>
				<dl class="sitemap">
					<dt>커뮤니티</dt>
					<dd>
						<div class="box_line"></div>
					</dd>
					<dd><a href="/community/community.html?loc=new">새소식</a></dd>
					<dd><a href="/community/community.html?loc=faq">자주 묻는 질문</a></dd>
					<dd><a href="/community/community.html?loc=call">문의하기</a></dd>
				</dl>
			</div>
			<div class="pop_ok">
				<p>확인</p>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$('.foot_menu > li:eq(0)').on('click', function(e) {
		$("#pop1").css('display','block');
	});
	
	$('.foot_menu > li:eq(1)').on('click', function(e) {
		$("#pop2").css('display','block');
	});
	
	$('.pop_close').on('click', function(e) {
		$("#pop1").css('display','none');
		$("#pop2").css('display','none');
	});
	
	$('.pop_ok p').on('click', function(e) {
		$("#pop1").css('display','none');
		$("#pop2").css('display','none');
	});
	
	$('#family_site').on('click', function(e) {
		if($(this).attr('data-click-state') == 1) {
			$(this).attr('data-click-state', 0);
			$("#select-layer").css('display','none');
		} else {
			$(this).attr('data-click-state', 1);
			$("#select-layer").css('display','block');
		}
	});
</script>
