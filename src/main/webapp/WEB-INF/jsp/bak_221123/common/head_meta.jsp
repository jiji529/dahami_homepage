<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="URL" value="${requestScope['javax.servlet.forward.servlet_path']}" />

	<meta charset="utf-8">
    <title>다하미커뮤니케이션즈</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="Pragma" content="no-cache">
    
    <meta name="keywords" content="다하미, 다하미 커뮤니케이션즈, 스크랩마스터, 스크랩, 미디어 빅데이터, AI통계, AI분석, 위기관리, SNS모니터링, 유튜브모니터링, 댓글모니터링, 자연어처리, 텍스트마이닝, 홍보성과측정, 뉴스스크랩, 빅데이터분석, 감성분석, 크롤링, NLP,  언어인지, 뉴스저작권, 신문스크랩, 뉴스모니터링, 티페이퍼, 홍보관리, 방송뉴스, 미디어리포트, 지면신문, 신문저작권, 방송저작권, 전자스크랩, 뉴스뱅크, 전자도서관, 디지털도서관, 클리핑온, 언론모니터링, 여론동향, E-NIE, 뉴스클리핑, 기사클리핑, 언론보도 보고서, 언론보도 성과측정, 보도자료, 신문데이터, 뉴스데이터, 언론데이터">
    <meta name="description" content="모든 뉴스를 내 손안에, 뉴스스크랩의 선두주자 다하미커뮤니케이션즈 | 뉴스저작권 신문스크랩 뉴스모니터링 티페이퍼 홍보관리 방송뉴스 미디어리포트">
    
    <meta property="og:title" content="다하미커뮤니케이션즈">
    <meta property="og:url" content="https://www.dahami.com/">
    <meta property="og:description" content="모든 뉴스를 내 손안에, 뉴스스크랩의 선두주자 다하미커뮤니케이션즈 | 뉴스저작권 신문스크랩 뉴스모니터링 티페이퍼 홍보관리 방송뉴스 미디어리포트">

    <meta name="twitter:card" content="summary" />
    <meta name="twitter:url" content="https://www.dahami.com/">
    <meta name="twitter:title" content="다하미커뮤니케이션즈" />
    <meta name="twitter:description" content="모든 뉴스를 내 손안에, 뉴스스크랩의 선두주자 다하미커뮤니케이션즈 | 뉴스저작권 신문스크랩 뉴스모니터링 티페이퍼 홍보관리 방송뉴스 미디어리포트" />
    
    <meta name="naver-site-verification" content="89e659d5cefc79fb82c6b972780928bd1eb4109f" />
    <meta name="google-site-verification" content="-4UuMBM7cFV7Hs9xMd19RdIrT3oh_bCDpmj49pgStB4" />
	<c:choose>
		<c:when test='${URL=="/index.html"}'></c:when>
		<c:when test='${URL=="/company/company.html"}'></c:when>
		<c:when test='${URL=="/service/scrapmaster.html"}'></c:when>
		<c:when test='${URL=="/recruit/recruit.html"}'></c:when>
		<c:when test='${URL=="/community/community.html"}'></c:when>
		<c:otherwise>
			<meta name="robots" content="noindex">
		</c:otherwise>
	</c:choose>
    <link rel="SHORTCUT ICON" href="<%=request.getContextPath()%>/images/dahami_favicon.ico">    