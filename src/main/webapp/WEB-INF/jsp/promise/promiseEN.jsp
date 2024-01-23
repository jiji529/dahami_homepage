<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<jsp:include page="../common/head_metaEN.jsp"/>
</head>
<style>
	html{
		scroll-behavior: smooth;
	}
</style>

<body>
    <jsp:include page="../common/headerEN.jsp"/>

    <section class="sublist_area">
		<ul class="location">
			<li>
				<a href="<%=request.getContextPath()%>/indexEN.html" class="location_list">HOME</a>
			</li>
			<li>
				<span class="location_list">Our Promise</span>
			</li>
		</ul>
        <div class="inner">
            <h2>Our Promise</h2>
            <div class="subtit_tit row">
                <h3 class="col5">We promise to be your risk management partner,<br>who understands the news best.</h3>
                <p class="subtit_txt col7">As a media content hub, <br>we are committed to providing new value based on our best media expertise. <br>This is our promise to all our customers and business partners.
</p>
            </div>
        </div>
    </section>
    <section class="sub_promise1">
        <div class="inner">
            <div class="sub_tit">Media Service Hub</div>
            <div class="sub_txt">A service hub based on media content and technology</div>
            <div class="sub_tit">Expert Capabilities</div>
            <div class="sub_txt">Experts in media content procurement, production, R&amp;D, quality control, marketing <br>and copyright management provide <br>the best possible experience for customers.

            </div>
            <div class="sub_tit">Customer-First</div>
            <div class="sub_txt">A company that creates value <br>by experiencing customer concerns together.
            </div>
        </div>
    </section>

    <section class="sub_promise2">
        <div class="inner">
        	<div id="sec1"></div>
            <div class="li3 reveal">
                <div class="li3_imgbox"></div>
                <div class="li3_box">
                    <div class="li3_tit">Media Service Hub</div>
                    <div class="li3_txt">A technology-based service hub for media content!</div>
                    <div class="li3_exp">“No organization is immune to a crisis; all organizations should prepare for crises” <span>– Timothy Coombs, US </span>
                    </div>
                    <div class="li3_cont">Organizations are increasingly exposed to a complex and chaotic media environment.<br>The use of media content and services, such as newspapers, broadcasting, and online, has become an essential element of organizational growth.
<br>
We provides integrated solutions based on media content, data, and technology.
</div>
                </div>
            </div>
            <div id="sec2"></div>
            <div class="li3 reveal">
                <div class="li3_imgbox"></div>
                <div class="li3_box">

                    <div class="li3_tit">Expert Capabilities</div>
                    <div class="li3_txt">
Media experts deliver the best customer experience.</div>
                    <div class="li3_cont">Media crisis management experts with experience and capabilities provide a variety of services, such as monitoring·reviewing·analyzing·responding, through consultations with customers.
<br><br>Experts with experience in media content procurement, related R&D and marketing, and copyright management are also on board.
<br><br>Experts with reliability, stability, and professionalism will provide the best possible service.
</div>
                </div>
            </div>
            <div id="sec3"></div>
            <div class="li3 reveal">
                <div class="li3_imgbox"></div>
                <div class="li3_box">
                    <div class="li3_tit">Customer-First</div>
                    <div class="li3_txt">
A company that creates value by experiencing customer concerns together.
</div>
                    <div class="li3_cont">We create our products and services by experiencing customers' concerns together
 <br>We don't pursue products for the sake of products or technology for the sake of technology.
<br>We understand our customers and pursue services that bring value to them.
</div>
                </div>
            </div>
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