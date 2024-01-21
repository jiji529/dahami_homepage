<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="../common/head_metaEN.jsp" />
</head>

<body>
    <jsp:include page="../common/headerEN.jsp" />

    <section class="subpg_tit">
        <div class="inner">
            <div>
                <h2>News Data for Pre-Training</h2>
                <h3>NDPT</h3>
                <p class="subtit_txt">Data is what makes AI work.<br>
                    From defining requirements to building data for AI training,
                    and providing quality news data with legal usage copyrights.<br>
                    We will be with you from the beginning to the end of AI development.</p>
            </div>
            <a href="https://ndpt.dahami.com/en" target="_blank" class="btn_bk">Go to the homepage</a>
        </div>
    </section>

    <section class="sub_ndpt">
        <div class="inner">
            <div class="sub_tit">News data feed service <br>for AI training</div>
            <div class="sub_txt"><br>NDPT is the only service that provides quality news data,<br>
                free from copyright issues, has the right data<br>
                technology for AI training.</div>
        </div>
    </section>

    <section class="sub_tech2">
        <div class="inner">
            <img src="<%=request.getContextPath()%>/images/ndpten.png" alt="NDPT" class="tech_img">
            <img src="<%=request.getContextPath()%>/images/ndptmen.png" alt="NDPT" class="tech_img_m">
        </div>
    </section>

    <section class="prod_head">
        <div class="inner"><b>NDPT for building successful AI services</b><br>
            NDPT provides high-quality news data for AI training.</div>
    </section>

    <section class="prod_detail2 pd">
        <div class="inner grid2">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/ndpt1-1.png"></div>
                <div class="prod_box_txt">
                    <p>Largest collection of news data in Korea</p>
                    <span>25 years of news data from over 3,000 national media outlets.<br>
                        Over 80 years of press photos from 26 major media organizations.<br>
                        News data from multiple broadcasters, including the three major terrestrial networks, telecommunications companies and private broadcasters.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/ndpt1-2.png"></div>
                <div class="prod_box_txt">
                    <p>Once and for all, Copyright Resolution</p>
                    <span>As an official distributor of the Korea Press Foundation, we have 25 years of experience in the news copyright business with legitimate news data.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/ndpt1-3.png"></div>
                <div class="prod_box_txt">
                    <p>Retain news data in various formats</p>
                    <span>Retain text-based newspaper/online articles, press photo images, and broadcast news video data.</span>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/ndpt1-4.png"></div>
                <div class="prod_box_txt">
                    <p>Provide optimized data for AI training</p>
                    <span>Provide customized, processed news data for building large language models (LLMs) and large multi modal models (LMMs).</span>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="../common/footerEN.jsp" />


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