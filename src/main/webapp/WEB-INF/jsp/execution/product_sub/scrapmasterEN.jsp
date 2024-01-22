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
				<span class="location_list">ScrapMaster</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>The world's first newspaper scraping program</h2>
                <h3>ScrapMaster</h3>
                <p class="subtit_txt">Dahami delivers more than 380 newspapers every day through ScrapMaster.
<br>
As an official distributor of [NewsKorea], the news copyright division of the Korea Press Foundation, ScrapMaster is the choice of more than 1000 customers in Korea, including central and local governments, public corporations, public institutions, and general companies.
</p>
            </div>
            <a href="https://www.scrapmaster.co.kr/" target="_blank" class="btn_bk">Go to Services
</a>
        </div>
    </section>
    <section class="subimg img_scrapmaster"></section>
    <section class="prod_head">
        <div class="inner">As the world's first newspaper scraping program, <b>ScrapMaster</b> is the premier media solution tried and trusted by professionals in public relations, strategy, marketing, support, and more.
</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid4">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster1-1.png"></div>
                <div class="prod_box_txt">
                    <p>Easy, intuitive user experience
</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster1-2.png"></div>
                <div class="prod_box_txt">
                    <p>Copyright Protection</p><span>
Korea Press Foundation contracts with hundreds of media organizations
</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster1-3.png"></div>
                <div class="prod_box_txt">
                    <p>Used by over 1,000 clients
</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster1-4.png"></div>
                <div class="prod_box_txt">
                    <p>380+ newspaper contents daily</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner">ScrapMaster suggests services that are appropriate for client's purpose, scope, and method of use.
</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster2-1.png"></div>
                <div class="prod_box_txt">
                    <p>ScrapMaster Premium</p>
                    <span>We help our customers solve the problem of searching for and secondary utilization of published news in one step.
Build a database of scraped news as well as news valuation and statistics.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster2-2.png"></div>
                <div class="prod_box_txt">
                    <p>ScrapMaster Mobile +</p>
                    <span>Read articles anytime, anywhere on your mobile device.
ScrapMaster Mobile + supports autosearch, ground search, and scraping, and makes it easy to share articles.
</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/scrapmaster2-3.png"></div>
                <div class="prod_box_txt">
                    <p>News scraping services</p> <span>Leave your early morning scraping duties to the experts.
We have subject matter experts standing by for fast, accurate delegation.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/product_sub/expertEN.html">Expert Services</a></div>
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