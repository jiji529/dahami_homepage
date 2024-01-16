<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<jsp:include page="../../common/head_metaEN.jsp"/>
</head>

<body>
    <jsp:include page="../../common/headerEN.jsp"/>

    <section class="subpg_tit">
    	<ul class="location">
			<li>
				<a href="<%=request.getContextPath()%>/indexEN.html" class="location_list">HOME</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/execution/cultureEN.html" class="location_list">Media Culture Business</a>
			</li>
			<li>
				<span class="location_list">T-Paper</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>Touchscreen meets newspaper</h2>
                <h3>T-Paper</h3>
                <p class="subtit_txt">T-Paper has been improved.<br>
We've improved the design and UI to support UHD and a variety of sizes, making them more comfortable to use.<br>
On the newly added home screen, we have added a variety of contents such as the front page of today's newspaper, the current weather, and recommended books to enhance utilization.
Stay tuned for more features and content in the future.</p>
            </div>
            <a href="https://www.t-paper.co.kr/" target="_blank" class="btn_bk">Go to Services</a>
        </div>
    </section>
    <section class="subimg img_tpaper"></section>
    <section class="prod_head">
        <div class="inner">Newspapers are a culture of writing and reading.<br>
Media creates a special memory of a space.<br>
We'll help you design and install them to fit your space.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper1-1.png"></div>
                <div class="prod_box_txt">
                    <p>Delivering the day's newspaper</p><span>Automatically updated every morning</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper1-2.gif"></div>
                <div class="prod_box_txt">
                    <p>Convenient UI</p><span>Intuitive, like reading a real newspaper</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper1-3.gif"></div>
                <div class="prod_box_txt">
                    <p>Features</p><span>Article zoom, search, and front page stories</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner"><b>Feel the promo impact of T-Paper</b> in the lobbies of libraries, public buildings, companies, and more.
</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper2-1.png"></div>
                <div class="prod_box_txt">
                    <p>High-definition promos</p>
                    <span>High-quality promotional videos and tickers are displayed on the home screen for added impact.<br>
Various options on the waiting screen allow you to show the video, image, or ground that your organization wants.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper2-2.png"></div>
                <div class="prod_box_txt">
                    <p>Personalized content</p>
                    <span>Book recommendation, local weather, or policy promotion, we can personalize content based on your organization.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/tpaper2-3.png"></div>
                <div class="prod_box_txt">
                    <p>Efficient Management System</p> <span>In addition to reducing the effort and space required to prepare and store paper newspapers, we provide an efficient management system such as automatic launch of kiosks and device management through usage statistics.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbankEN.html">NewsBank</a></div>
        </div>
    </section>
    <jsp:include page="../../common/footerEN.jsp"/>
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