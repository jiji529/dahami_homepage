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
				<span class="location_list">NewsBank</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>Press Photo Museum of Korea</h2>
                <h3>NewsBank</h3>
                <p class="subtit_txt">NewsBank is the largest integrated library of news photos in Korea, holding more than 6.5 million images from 25 news organizations.<br>
From the 19th century, through the Japanese occupation, the Korean War, and the industrialization era. to today, important scenes in Korea's modern and contemporary history have been recorded in vivid reportage.
</p>
            </div>
            <a href="https://www.newsbank.co.kr/" target="_blank" class="btn_bk">Go to Services</a>
        </div>
    </section>
    <section class="subimg img_newsbank"></section>
    <section class="prod_head">
        <div class="inner">The <b>NewsBank</b> is a museum of press photographs that vividly captures scenes from Korea's history.<br>
Provides millions of press photos from the early history of Korea to the present day.<br>
            <b>The only integrated library of press photos in Korea.</b> We are recording history.
</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid4">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank1-1.png"></div>
                <div class="prod_box_txt">
                    <p>Press photos from 25+ national media outlets</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank1-2.png"></div>
                <div class="prod_box_txt">
                    <p>An average of 30,000 press photo updates per month</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank1-3.png"></div>
                <div class="prod_box_txt">
                    <p>Establish usage-based pricing online and offline</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank1-4.png"></div>
                <div class="prod_box_txt">
                    <p>Provide monthly sales reports to authors</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner">The <b>unique ID of a NewsBank photo</b> is its Universal Content Identifier (UCI).<br>
UCI is a scheme for assigning and managing a unique and permanent code to identifiable digital content.</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank2-1.png"></div>
                <div class="prod_box_txt">
                    <p>Uniform Code Identifier (UCI) Registrar</p>
                    <span>Dahami Communications was designated as the UCI Registrar for Press Photographs in 2016 by the Korean Copyright Commission, the governing body of the UCI.<br>A registrar is an organization that receives identifying information about content from digital content registrants and issues UCIs to that content.
</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank2-2.png"></div>
                <div class="prod_box_txt">
                    <p>Role of the registrar</p>
                    <span>Manage registrants, including approving registrants and issuing registrant codes<br>
Registration of metadata, issuance and maintenance of identifiers<br>
Transmission of identification metadata to governing bodies<br>
Validation of Uniform Resource Locator (URL) information managed with identifiers
Development and servicing of application services in conjunction with the overall system.
</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/newsbank2-3.png"></div>
                <div class="prod_box_txt">
                    <p>Seamless digital content distribution </p> 
                    <span>The UCI is a national standardized identification system that gives digital content a unique code, and its scope is global.<br>
UCI will serve as a distribution base for resources and is applied to a variety of practical applications without distinction between online and offline, such as distribution tracking, transaction authentication, and reference linkage services.
</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/culture_sub/tpaperEN.html">T-Paper</a></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/culture_sub/enieEN.html">e-NIE</a></div>
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