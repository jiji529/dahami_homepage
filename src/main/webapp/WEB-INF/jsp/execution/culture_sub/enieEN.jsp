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
				<span class="location_list">e-NIE</span>
			</li>
		</ul>
        <div class="inner">
            <div>
                <h2>Study newspapers on the computer</h2>
                <h3>e-NIE</h3>
                <p class="subtit_txt">Dahami is running a project with the Korea Press Foundation.<br>
Newspapers not only help develop cognitive learning skills, but also values and character.</p>
            </div>
            <a href="http://enie.forme.or.kr/" target="_blank" class="btn_bk">Go to Services</a>
        </div>
    </section>
    <section class="subimg img_enie"></section>
    <section class="prod_head">
        <div class="inner">By transferring paper newspapers to computers, students can conveniently clip newspapers and utilize them for education anytime, anywhere with internet access.<br>Dahami runs the Newspaper Literacy Education (e-NIE) project with the Korea Press Foundation.
        </div>
    </section>
    <section class="prod_detail1">
        <div class="inner grid3">
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/enie1-1.png"></div>
                <div class="prod_box_txt">
                    <p>Using digital newspapers as teaching aids</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/enie1-2.png"></div>
                <div class="prod_box_txt">
                    <p>Useful features for teaching and learning</p>
                </div>
            </div>
            <div class="prod_box">
                <div class="prod_img"><img src="<%=request.getContextPath()%>/images/enie1-3.png"></div>
                <div class="prod_box_txt">
                    <p>Integrated media literacy education</p>
                </div>
            </div>
        </div>
    </section>
    <section class="prod_btn">
        <div class="inner">
            <div class="prod_btn_left"><a href="<%=request.getContextPath()%>/execution/culture_sub/newsbankEN.html">NewsBank</a></div>
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