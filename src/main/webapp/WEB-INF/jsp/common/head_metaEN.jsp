<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="URL" value="${requestScope['javax.servlet.forward.servlet_path']}" />

	<meta charset="utf-8">
    <title>Dahami Communications</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="Pragma" content="no-cache">
    
    <meta name="keywords" content="Dahami,Dahami Communications,ScrapMaster,Scrap,Media Big Data,AI Statistics,AI Analytics,Risk Management,SNS Monitoring,YouTube Monitoring,Comment Monitoring,Natural Language Processing,Text Mining,PR Performance Measurement,News Scraping,Big Data Analytics,Sentiment Analysis,Crawling,NLP,Language Cognition,News Copyright,Newspaper Clipping,News Monitoring,T-Paper,PR Management,Broadcast News,Media Report,Print Newspaper,Newspaper Copyright,Broadcast Copyright,Electronic Scrap,NewsBank,Electronic Library,Digital Library,Clipping On,Press Monitoring,Opinion Trends,e-NIE,News Clipping,Article Clipping,Media Press Release Report,Media Press Performance Measurement,Press Releases,Newspaper Data,News data,Press Data">
    <meta name="description" content="All the news in the palm of your hand
Dahami Communications, the leader in news scraping | News Copyright Newspaper Scraping News Monitoring T-Paper PR Management Broadcast News Media Report
">
    
    <meta property="og:title" content="Dahami Communications">
    <meta property="og:url" content="https://www.dahami.com/">
    <meta property="og:description" content="All the news in the palm of your hand
Dahami Communications, the leader in news scraping | News Copyright Newspaper Scraping News Monitoring T-Paper PR Management Broadcast News Media Report">

    <meta name="twitter:card" content="summary" />
    <meta name="twitter:url" content="https://www.dahami.com/">
    <meta name="twitter:title" content="Dahami Communications" />
    <meta name="twitter:description" content="All the news in the palm of your hand
Dahami Communications, the leader in news scraping | News Copyright Newspaper Scraping News Monitoring T-Paper PR Management Broadcast News Media Report" />
    
    <meta name="naver-site-verification" content="89e659d5cefc79fb82c6b972780928bd1eb4109f" />
    <meta name="google-site-verification" content="-4UuMBM7cFV7Hs9xMd19RdIrT3oh_bCDpmj49pgStB4" />
	<c:choose>
		<c:when test='${URL=="/index.html" || URL=="/indexEN.html"}'></c:when>
		<c:otherwise>
			<meta name="robots" content="noindex">
		</c:otherwise>
	</c:choose>
    <link rel="SHORTCUT ICON" href="<%=request.getContextPath()%>/images/dahami_favicon.ico">    

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Dahami Communications</title>      	         	   
	<jsp:include page="./common_setting.jsp"></jsp:include>		
	<jsp:include page="./google_analytics.jsp"></jsp:include>
    