<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<jsp:include page="../common/head_metaEN.jsp"/>
</head>

<body>
    <jsp:include page="../common/headerEN.jsp"/>

    <section class="sublist_area">
    	<ul class="location">
			<li>
				<a href="<%=request.getContextPath()%>/indexEN.html" class="location_list">HOME</a>
			</li>
			<li>
				<span class="location_list">Risk Management Solutions</span>
			</li>
		</ul>
        <div class="inner">
            <h2>Execution</h2>
            <div class="tab">
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/execution/productEN.html">Risk Management Solutions</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/cultureEN.html">Media Culture Business</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/partnerEN.html">Partnerships</a></div>
            </div>
            <div class="subtit_tit row">
                <h3 class="col4">Reliable tools for risk management
</h3>
                <p class="subtit_txt col7">Dedicated solutions for media risk management provide optimal products and services in complex media environments, including newspapers, broadcast, online news, and social media. You can do your job efficiently within a reasonable budget.</p>
            </div>
        </div>
    </section>


    <section class="sub_product">
        <div class="inner">
            <ul class="prod_li prod1">
                <li><a href="<%=request.getContextPath()%>/execution/product_sub/scrapmasterEN.html">
                        <div class="prod_num">01</div>
                        <div class="prod_cont">
                            <div class="prod_tit">ScrapMaster</div>
                            <div class="prod_subtit">The world's first newspaper clipping program</div>
                            <div class="prod_txt">Dahami delivers more than 380 newspapers every day through ScrapMaster.<br>
As an official distributor of [NewsKorea], the news copyright division of the Korea Press Foundation, ScrapMaster is the choice of more than 1000 customers in Korea, including central and local governments, public corporations, public institutions, and general companies.</div>
                            <div class="more">Learn More</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/product_sub/expertEN.html">
                        <div class="prod_num">02</div>
                        <div class="prod_cont">
                            <div class="prod_tit">Expert Services</div>
                            <div class="prod_subtit">Personalized consultation and services from experts</div>
                            <div class="prod_txt">Our experienced media risk management experts will consult with you and suggest the most appropriate services.</div>
                            <div class="more">Learn More</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/product_sub/clippingonEN.html">
                        <div class="prod_num">03</div>
                        <div class="prod_cont">
                            <div class="prod_tit">ClippingOn</div>
                            <div class="prod_subtit">Real-time broadcast news monitoring solution</div>
                            <div class="prod_txt">We solved the problem of broadcast news copyright by signing formal contracts with nine domestic broadcasters, including terrestrial broadcasters / reportage channel /  general broadcasters.
Immediate response to unexpected coverage and risk management.
We also integrate with ScrapMaster to consolidate your press clipping efforts.
</div>
                            <div class="more">Learn More</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/product_sub/newsplazaEN.html">
                        <div class="prod_num">04</div>
                        <div class="prod_cont">
                            <div class="prod_tit">NewsPlaza</div>
                            <div class="prod_subtit">Online news integration service
</div>
                            <div class="prod_txt">NewsPlaza is one of the news copyright programs of the Korea Press Foundation and provides online news from 93 media organizations.
<br>
Dahami is the official agency for the sale of original online news copyrights for the Korea Press Foundation's News Plaza project. We provide an average of 8,000 to 10,000 news articles per day in the form of full-text data so that our customers can use them according to their preferences.
</div>
                            <div class="more">Learn More</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>                
            </ul>
        </div>





    </section>
    <jsp:include page="../common/footerEN.jsp"/>
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