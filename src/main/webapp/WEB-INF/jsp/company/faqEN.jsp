<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="../common/head_metaEN.jsp" />
</head>

<body>
    <jsp:include page="../common/headerEN.jsp" />

    <section class="sublist_area">
        <ul class="location">
            <li>
                <a href="<%=request.getContextPath()%>/indexEN.html" class="location_list">HOME</a>
            </li>
            <li>
                <span class="location_list">FAQ</span>
            </li>
        </ul>
        <div class="inner">
            <h2>Company</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/companyEN.html">About Us</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/recruitEN.html">Careers</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/company/faqEN.html">FAQ</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/qnaEN.html">Contact Us</a></div>
            </div>

        </div>
    </section>
    <section class="sub_faq">
        <div class="inner">

            <div class="sub_tit">
                <h3>FAQ</h3>
            </div>
            <p class="sub_txt">Here are some FAQ about Dahami Communications' services.</p>

            <div class="news_top">
                <div class="news_count">Total <span id="totcnt">${faqcnt}</span></div>
                <div class="search">
                    <input type="text" name="searchInput" id="searchInput" value="" placeholder="Please enter your search term" onkeyup="enterkey()">
                    <button id="searchTxt" onclick="searchFaq()">Search</button>
                </div>
            </div>
            <div class="m_news" id="faqlst">
                <ul id="faqlst_sub">
                    <c:forEach var="result" items="${faqList}" varStatus="status">
                        <li id="faq_dt${status.count}" style="cursor: pointer;" onClick="evt1(${status.count})">
                            <span class="date">${faqList[status.count-1].gubun}</span>
                            <span class="tit">${faqList[status.count-1].quest}</span>
                        </li>
                        <li id="faq_dd${status.count}" class="faq_dd" style="display: none;">
                            <p class="faq_contit">${faqList[status.count-1].answer}</p>
                            <p></p>
                        </li>
                    </c:forEach>
                </ul>
                <div class="btn_area"><button class="btn btn_bk" onclick="loadMoreFaq('1')">View More</button></div>
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

    function enterkey() {
        if (window.event.keyCode == 13) {
            // 엔터키가 눌렸을 때
            searchFaq();
        }
    }

    // FAQ 클릭시 반응
    function evt1(newwin) {
        var objid = document.getElementById("faq_dd" + newwin);

        //class='on'

        if (objid.style.display == "block") {
            objid.style.display = "none";
            $("#faq_dt" + newwin).removeClass();
        } else {
            $("#faq_dd" + newwin).css('display', 'none');
            $("#faq_dt" + newwin).removeClass();
            objid.style.display = "block";
            $("#faq_dt" + newwin).addClass("on");
        }
    }

    var page = 1;
    var between = 10;

    // 자주 묻는질문 추가로딩
    function loadMoreFaq(page) {
        page = page;
        var question = $('#searchInput').val();

        $.ajax({
            type: "GET",
            url: "<%=request.getContextPath()%>/company/loadMoreFaqEN.html",
            data: {
                page: page,
                question: question
            },
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            cache: false,
            success: renderFaq
        });
    }

    // 자주 묻는질문 검색기능
    function searchFaq() {
        page = 0;
        var question = $('#searchInput').val();

        $.ajax({
            type: "GET",
            url: "<%=request.getContextPath()%>/company/loadMoreFaqEN.html",
            data: {
                page: page,
                question: question
            },
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            cache: false,
            success: renderSearchFaq
        });
    }

    // 자주 묻는질문 검색 랜더링
    function renderSearchFaq(json) {
        var html = "";

        var html = "";
        if (json.length != 0) {
            for (var i = 0; i < json.length; i++) {
                var index = parseInt(json[i].page) + (i + 1);
                html += '<li id="faq_dt' + index + '" style="cursor: pointer;" onClick="evt1(' + index + ')">';
                html += '<span class="date">' + json[i].gubun + '</span>';
                html += '<span class="tit">' + json[i].quest + '</span>';
                html += '</li>';
                html += '<li id="faq_dd' + index + '" class="faq_dd" style="display: none;">';
                html += '<p class="faq_contit">' + json[i].answer + '</p>';
                html += '<p></p>';
                html += '</li>';
            }
            $('#faqlst_sub').html(html);
            $('#totcnt').text(json[0].totcnt);

            page++;

            if (json.length < between) {
                $('.btn_area').css('display', "none");
            } else {
                $('.btn_area').css('display', "block");
                $('.btn_bk').attr('onclick', 'loadMoreFaq(\'' + page + '\')');
            }
        } else {
            html += '<li><span>No questions related to the search term.</span></li>';
            $('#faqlst_sub').html(html);
            $('.btn_area').css('display', "none");
            $('#totcnt').text("0");
        }
    }

    // 자주 묻는질문 랜더링
    function renderFaq(json) {
        var html = "";

        var html = "";
        if (json.length != 0) {
            for (var i = 0; i < json.length; i++) {
                var index = parseInt(json[i].page) + (i + 1);
                html += '<li id="faq_dt' + index + '" style="cursor: pointer;" onClick="evt1(' + index + ')">';
                html += '<span class="date">' + json[i].gubun + '</span>';
                html += '<span class="tit">' + json[i].quest + '</span>';
                html += '</li>';
                html += '<li id="faq_dd' + index + '" class="faq_dd" style="display: none;">';
                html += '<p class="faq_contit">' + json[i].answer + '</p>';
                html += '<p></p>';
                html += '</li>';
            }
            $('#faqlst_sub').append(html);

            page++;

            if (json.length < between) {
                $('.btn_area').css('display', "none");
            } else {
                $('.btn_area').css('display', "block");
                $('.btn_bk').attr('onclick', 'loadMoreFaq(\'' + page + '\')');
            }
        } else {
            $('.btn_area').css('display', "none");
        }
    }
</script>

</html>