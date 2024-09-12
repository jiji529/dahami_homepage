<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<jsp:include page="../../common/head_meta.jsp"/>
</head>

<body>
    <jsp:include page="../../common/header.jsp"/>

    <section class="subpg_tit">
    	<ul class="location">
			<li>
				<a href="<%=request.getContextPath()%>/index.html" class="location_list">Home</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/execution/culture.html" class="location_list">Media Culture Business</a>
			</li>
			<li>
				<span class="location_list">NYT X Newsbank</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>Every second in the world, in the Newsbank</h2>
                <h3>NYT X Newsbank</h3>
                <p class="subtit_txt">Newsbank, the largest integrated library of press photos in Korea, has partnered with The New York Times, one of the top three daily newspapers in the United States. You can purchase world-class press photos directly in Korea.</p>
            </div>
            <a href="https://www.providers-nyt.newsbank.co.kr/" target="_blank" class="btn_bk">Shortcut to NYT X Newsbank</a>
        </div>
    </section>
    <section class="subimg img_nyt"></section>
    <section class="prod_head">
        <div class="inner">We have a large collection of press photos from The New York Times dating back to 1851, with more than 200 press photos added daily.<br>
            <b>From 20th-century historical events to the latest news, photographs of important moments can be used for research, education, reporting, and more.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/nyt1-1.png"></div>
                <div class="prod_box_txt">
                    <p>Get the press photos you need quickly and easily</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/nyt1-2.png"></div>
                <div class="prod_box_txt">
                    <p>200+ new press photos added daily</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/nyt1-3.png"></div>
                <div class="prod_box_txt">
                    <p>Ever-evolving Archive</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
        	<div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbankEN.html">Newsbank</a></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/culture_sub/enieEN.html">e-NIE</a></div>
        </div>
    </section>
    <jsp:include page="../../common/footer.jsp"/>

</body>

    <script>
        var container = document.querySelector('.gnb');
        container.addEventListener('mouseenter', function() {
            this.classList.add('on');
        })
        container.addEventListener('mouseleave', function() {
            this.classList.remove('on');
        })
    </script>
</html>