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
				<a href="<%=request.getContextPath()%>/execution/productEN.html" class="location_list">Risk Management Solutions</a>
			</li>
			<li>
				<span class="location_list">NewsPlaza</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>Online news integration service</h2>
                <h3>NewsPlaza</h3>
                <p class="subtit_txt">NewsPlaza is one of the news copyright programs of the Korea Press Foundation and provides online news from 93 media organizations.<br>
                    Dahami Communications is the official agency for the sale of original online news copyrights for the Korea Press Foundation's NewsPlaza project. We provide an average of 8,000 to 10,000 news articles per day in the form of full-text data so that our customers can use them according to their preferences.</p>
            </div>
            <a href="http://news-plaza.com/" target="_blank" class="btn_bk">Go to Services
</a>
        </div>
    </section>
    <section class="subimg img_newsplaza"></section>
    <section class="prod_head">
        <div class="inner">Online news is the perfect media for quick information.<br>
NewsPlaza provides online news from major Korean media companies in bulk.<br>
It is suitable for internal work such as news monitoring as well as external distribution for public relations purposes.</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza1-1.png"></div>
                <div class="prod_box_txt">
                    <p>Customized for personal environment</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza1-2.png"></div>
                <div class="prod_box_txt">
                    <p>Organize products by scope of use</p><span>Keyword products, integrated database products, etc. can be selected by scope of use</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-3.png"></div>
                <div class="prod_box_txt">
                    <p>Copyright Protection</p>
                    <span>Korea Press Foundation, copyright protection through media contracts</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner">NewsPlaza supports my organization find meaning in media.
</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza2-1.png"></div>
                <div class="prod_box_txt">
                    <p>Multiple uses</p>
                    <span>Whether it's for your homepage, scraping, or intranet use, you can easily use online news for a variety of purposes.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza2-2.png"></div>
                <div class="prod_box_txt">
                    <p>Keyword Service</p>
                    <span>Register multiple keywords of your choice to provide customized news in various fields such as policy/company/industry.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsplaza2-3.png"></div>
                <div class="prod_box_txt">
                    <p>Aggregation Services</p> <span>We provide aggregated, categorized news source data for your internal network.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/product_sub/clippingonEN.html">ClippingOn</a></div>
            <div class="prod_btn_right"></div>
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