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
				<span class="location_list">Expert Services</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>Personalized consultation and services from experts</h2>
                <h3>Services from risk management experts
</h3>
                            </div>
        </div>
    </section>
    <section class="subimg img_expert"></section>
    <section class="prod_head">
        <div class="inner">Our experienced media risk management experts will consult with you and suggest the most appropriate services.
</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-1.png"></div>
                <div class="prod_box_txt">
                    <p>News clipping, media monitoring
</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-2.png"></div>
                <div class="prod_box_txt">
                    <p>Media reviews and analytics
</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-3.png"></div>
                <div class="prod_box_txt">
                    <p>Issue tracking and in-depth reports
</p>
                </div>
            </div><div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-4.png"></div>
                <div class="prod_box_txt">
                    <p>Analyze and respond to public opinion
</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-5.png"></div>
                <div class="prod_box_txt">
                    <p>Personalized media selection
</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/expert1-6.png"></div>
                <div class="prod_box_txt">
                    <p>Practical applications in PR, marketing, strategy, and more
</p>
                </div>
            </div>
        </div>
    
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/product_sub/scrapmasterEN.html">ScrapMaster</a></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/product_sub/clippingonEN.html">Clipping On
</a></div>
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