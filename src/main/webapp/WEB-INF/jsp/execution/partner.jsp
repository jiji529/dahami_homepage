<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<jsp:include page="../common/head_meta.jsp"/>
</head>
<style>
	.d-none { 
		display: none !important;
	}
</style>
<body>
    <jsp:include page="../common/header.jsp"/>


    <section class="sublist_area">
    	<ul class="location">
			<li>
				<a href="<%=request.getContextPath()%>/index.html" class="location_list">홈</a>
			</li>
			<li>
				<span class="location_list">파트너쉽</span>
			</li>
		</ul>
        <div class="inner">
            <h2>실행</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/product.html">위기관리 솔루션</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/execution/culture.html">미디어 문화 사업</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/execution/partner.html">파트너쉽</a></div>
            </div>

        </div>
    </section>
    <section class="partner1">
        <div class="inner">
            <h2>단체/협회</h2>
            <ul class="grid3">
                <li><img src="<%=request.getContextPath()%>/images/partner/partner1-1.png" title="한국언론진흥재단" alt="한국언론진흥재단"></li>
                <li><img src="<%=request.getContextPath()%>/images/partner/partner1-2.png" title="한국온라인신문협회" alt="한국온라인신문협회"></li>
                <li><img src="<%=request.getContextPath()%>/images/partner/partner1-3.png" title="한국인터넷신문협회" alt="한국인터넷신문협회"></li>
            </ul>
        </div>
    </section>
    <section class="partner2">
        <div class="inner">
            <h2>언론사</h2>
            <div class="tab2 grid4 service_tab">
                <div class="tab2_menu on" onclick="filterList()"><a href="javascript:void(0)">전체</a></div>
                <div class="tab2_menu" onclick="filterList('trusted')"><a href="javascript:void(0)">신탁매체</a></div>
                <div class="tab2_menu" onclick="filterList('untrusted')"><a href="javascript:void(0)">비신탁매체</a></div>
                <div class="tab2_menu" onclick="filterList('online')"><a href="javascript:void(0)">인터넷신문</a></div>
            </div>
			<span id="guide_delegate" class="d-none" style="float: right; font-size: 14px;color: #666;">
				<font color="red" style="font-size: 19px;">*</font> 표시 된 매체는 대리중개 매체입니다.
			</span>
            <div class="pro_sec">
            	<c:forEach var="kind" items="${kindList}" varStatus="status">
	            		<dl class="media_list" id="${kind.key}">
	                        <dt id="title${kind.key}">${kind.value}</dt>
	                        <dd>
	                            <ul>
	                                <c:forEach var="logo" items="${logoList}" varStatus="status">
	                                	<c:if test="${kind.key eq logo.kindSerial}">
	                                		<li class="${logo.classText}">
		                                        <c:if test="${logo.mediaDelegated eq 'Y'}">
		                                        	<span style="color:red; font-size:20px; margin-right:5px;">*</span>
		                                        </c:if>
	                                        	<img src="<%=request.getContextPath()%>/images/partnership/${logo.fileName}" alt="${logo.mediaName}" title="${logo.mediaName}" />
	                                        </li>
	                                 	</c:if>
	                             	</c:forEach>
	                            </ul>
	                        </dd>
	                    </dl>
				</c:forEach>                
            </div>
        </div>
    </section>

    <jsp:include page="../common/footer.jsp"/>

</body>

    <script>
        var container = document.querySelector('.gnb');
        container.addEventListener('mouseenter', function() {
            this.classList.add('on');
        })
        container.addEventListener('mouseleave', function() {
            this.classList.remove('on');
        })
        
        $(document).ready(function() {
        	// 서비스 중인 매체 컨트롤 
            $(".service_tab div").eq(0).on('click', function(e) {
                $(".service_tab div").eq(0).attr('class','tab2_menu on');
                $(".service_tab div").eq(1).attr('class','tab2_menu');
                $(".service_tab div").eq(2).attr('class','tab2_menu');
                $(".service_tab div").eq(3).attr('class','tab2_menu');
            });
            $(".service_tab div").eq(1).on('click', function(e) {
                $(".service_tab div").eq(1).attr('class','tab2_menu on');
                $(".service_tab div").eq(0).attr('class','tab2_menu');
                $(".service_tab div").eq(2).attr('class','tab2_menu');
                $(".service_tab div").eq(3).attr('class','tab2_menu');
            });
            $(".service_tab div").eq(2).on('click', function(e) {
                $(".service_tab div").eq(2).attr('class','tab2_menu on');
                $(".service_tab div").eq(0).attr('class','tab2_menu');
                $(".service_tab div").eq(1).attr('class','tab2_menu');
                $(".service_tab div").eq(3).attr('class','tab2_menu');
            });
            $(".service_tab div").eq(3).on('click', function(e) {
                $(".service_tab div").eq(3).attr('class','tab2_menu on');
                $(".service_tab div").eq(0).attr('class','tab2_menu');
                $(".service_tab div").eq(1).attr('class','tab2_menu');
                $(".service_tab div").eq(2).attr('class','tab2_menu');
            });
        })
        
        function filterList(tag) {
            if (tag == undefined) {
                tag = 'all';
                $('.media_list li').removeClass('d-none');
            } else {
                $('.media_list li').each(function() {
                    if ($(this).hasClass('media_' + tag)) {
                        $(this).removeClass('d-none');
                    } else {
                        $(this).addClass('d-none');
                    }
                });
            }
            if (tag === 'trusted') {
                $('#guide_delegate').removeClass('d-none');
            } else {
                $('#guide_delegate').addClass('d-none');
            }
            $('.service_tab div').each(function() {
                if ($(this).hasClass(tag)) { $(this).addClass('on'); }
                else { $(this).removeClass('on'); }
            });
            var $dl;
            var $dt;
            $('dl.media_list').each(function() {
            	$dl = $(this);
                $dt = $(this).children('dt');
                if ($(this).find('li:not(.d-none)').length === 0) {
                    $dl.addClass('d-none');
                    $dt.addClass('d-none');
                } else {
                    $dl.removeClass('d-none');
                    $dt.removeClass('d-none');
                }
            });
        }
    </script>
</html>