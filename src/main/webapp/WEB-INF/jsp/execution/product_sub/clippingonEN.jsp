<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="../../common/head_metaEN.jsp" />
</head>

<body>
    <jsp:include page="../../common/headerEN.jsp" />
    <section class="subpg_tit">
        <ul class="location">
            <li>
                <a href="<%=request.getContextPath()%>/indexEN.html" class="location_list">HOME</a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/execution/productEN.html" class="location_list">Risk Management Solutions</a>
            </li>
            <li>
                <span class="location_list">Clipping On
                </span>
            </li>
        </ul>
        <div class="inner">
            <div>
                <h2>Real-time broadcast news monitoring solution</h2>
                <h3>Clipping On</h3>
                <p class="subtit_txt">We solved the problem of broadcast news copyright by signing formal contracts with nine domestic broadcasters, including terrestrial broadcasters / reportage channel /  general broadcasters.
Immediate response to unexpected coverage and risk management.
We also integrate with ScrapMaster to consolidate your press clipping efforts. </p>
            </div>
            <a href="http://www.clippingon.co.kr/" target="_blank" class="btn_bk">Go to Services
</a>
        </div>
    </section>
    <section class="subimg img_clippingon"></section>
    <section class="prod_head">
        <div class="inner">Broadcasters' video news is highly impactful because it leaves a direct impression on viewers.<br>
            <b>Clipping On</b> enables efficient risk response with real-time alerts during key news times.
</div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid4">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-1.png"></div>
                <div class="prod_box_txt">
                    <p>Live alerts for key news times</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-2.png"></div>
                <div class="prod_box_txt">
                    <p> 9 broadcast news sources</p><span>3 terrestrial broadcasters, specialty and general news channels, etc.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-3.png"></div>
                <div class="prod_box_txt">
                    <p>Copyright protection through broadcaster contracts</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon1-4.png"></div>
                <div class="prod_box_txt">
                    <p>Supports broadcast news clipping function</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_head">
        <div class="inner">Clipping On provides tools to easily aggregate and manage broadcast news.
</div>
    </section>
    <section class="prod_detail2">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon2-1.png"></div>
                <div class="prod_box_txt">
                    <p>News aggregation platform services</p>
                    <span>Search for news from all broadcasters at once.<br>
No need to search on multiple sites.<br>
All you need to do is Clipping On.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon2-2.png"></div>
                <div class="prod_box_txt">
                    <p>Auto Search/Filtering</p>
                    <span>Clipping On automatically searches and filter broadcast news by the search keywords you specify.<br>
You don't have to search for a lot of keywords.<br>
Just save dates/broadcasters/programs by keyword and the program will search for them automatically.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/clippingon2-3.png"></div>
                <div class="prod_box_txt">
                    <p>Mobile alert service</p> <span>Get news alerts when you want them, based on keywords you set.<br>
With real-time alerts that notify you as soon as they happen, you can respond immediately to unexpected reports and manage risks.</span>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/product_sub/expertEN.html">Expert Services</a></div>
            <div class="prod_btn_right"><a href="<%=request.getContextPath()%>/execution/product_sub/newsplazaEN.html">News Plaza</a></div>
        </div>
    </section>
    <jsp:include page="../../common/footerEN.jsp" />
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