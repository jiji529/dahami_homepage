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
				<span class="location_list">Media Culture Business</span>
			</li>
		</ul>
        <div class="inner">
            <h2>Execution</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/productEN.html">Risk Management Solutions</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/execution/cultureEN.html">Media Culture Business</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/partnerEN.html">Partnerships</a></div>
            </div>
            <div class="subtit_tit row">
                <h3 class="col4">Media culture in everyday life</h3>
                <p class="subtit_txt col7">We carry out cultural projects utilizing media, such as the dissemination of reading culture and newspaper utilization education, which are important in the digital age.
We are working to spread media not only in the online environment, but also in everyday spaces such as schools, libraries, and public facilities</p>
            </div>
        </div>
    </section>


    <section class="sub_product">
        <div class="inner">
            <ul class="prod_li prod2">
                <li><a href="<%=request.getContextPath()%>/execution/culture_sub/tpaperEN.html">
                        <div class="prod_num">01</div>
                        <div class="prod_cont">
                            <div class="prod_tit">T-Paper
</div>
                            <div class="prod_subtit">Kiosk Newspaper/Magazine Solutions</div>
                            <div class="prod_txt">T-Paper has been improved.<br>
We've improved the design and UI to support UHD and a variety of sizes, making them more comfortable to use.
On the newly added home screen, we have added a variety of contents such as the front page of today's newspaper, the current weather, and recommended books to enhance utilization.
Stay tuned for more features and content in the future.
</div>
                            <div class="more">Learn More</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbankEN.html">
                        <div class="prod_num">02</div>
                        <div class="prod_cont">
                            <div class="prod_tit">NewsBank</div>
                            <div class="prod_subtit">Press Photo Museum of Korea</div>
                            <div class="prod_txt">Newsbank is the largest integrated library of news photos in Korea, holding more than 6.5 million images from 25 news organizations.
From the 19th century, through the Japanese occupation, the Korean War, and the industrialization era. to today, important scenes in Korea's modern and contemporary history have been recorded in vivid reportage.
</div>
                            <div class="more">Learn More</div>
                        </div>
                        <div class="prod_thumb"><span></span></div>
                    </a>
                </li>
                <li><a href="<%=request.getContextPath()%>/execution/culture_sub/enieEN.html">
                        <div class="prod_num">03</div>
                        <div class="prod_cont">
                            <div class="prod_tit">e-NIE</div>
                            <div class="prod_subtit">Study newspapers on the computer
</div>
                            <div class="prod_txt">Dahami is running a project with the Korea Press Foundation.<br>
Newspaper utilization education (e-NIE) is provided through Forme (forme.or.kr), which is operated by the Korea Press Foundation, and we are working to distribute it to schools at all levels.<br>

By transferring paper newspapers to computers, students can conveniently clip newspapers and utilize them for education anytime, anywhere with internet access.<br>

Since the newspapers are provided as they are published, there is no need to worry about students being exposed to harmful content."</div>
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