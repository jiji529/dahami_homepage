<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <header>
        <h1 class="logo"><a href="<%=request.getContextPath()%>/index.html">dahami</a></h1>
        <nav class="gnb">
            <div class="gnbbg"></div>
            <div class="menu"><a href="<%=request.getContextPath()%>/promise/promise.html">약속</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/promise/promise.html#sec1">미디어 허브</a>
                    <a href="<%=request.getContextPath()%>/promise/promise.html#sec2">전문가 역량</a>
                    <a href="<%=request.getContextPath()%>/promise/promise.html#sec3">고객 가치</a>
                </div>
            </div>
            <div class="menu"><a href="<%=request.getContextPath()%>/execution/product.html">실행</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/execution/product.html">위기관리 솔루션</a>
                    <a href="<%=request.getContextPath()%>/execution/culture.html">미디어 문화 사업</a>
                    <a href="<%=request.getContextPath()%>/execution/partner.html">파트너쉽</a>
                </div>
            </div>
            <div class="menu"><a href="<%=request.getContextPath()%>/tech/tech.html">기술</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/tech/tech.html">dAIa</a>
                </div>
            </div>
            <div class="menu"><a href="<%=request.getContextPath()%>/news/news.html">뉴스</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/news/news.html">회사소식</a>
                    <a href="<%=request.getContextPath()%>/news/insta.html">왓썹뉴스</a>
                </div>
            </div>
            <div class="menu"><a href="<%=request.getContextPath()%>/company/company.html">회사</a>
                <div class="gnb_2depth">
                    <a href="<%=request.getContextPath()%>/company/company.html">회사소개</a>
                    <a href="<%=request.getContextPath()%>/company/recruit.html">채용</a>
                    <a href="<%=request.getContextPath()%>/company/faq.html">자주 묻는 질문</a>
                    <a href="<%=request.getContextPath()%>/company/qna.html">문의하기</a>
                </div>
            </div>
        </nav>
        <div class="util">
            <a href="https://www.scrapmaster.co.kr" target="_blank">스크랩마스터</a>
            <a href="<%=request.getContextPath()%>/company/qna.html" target="_blank">문의하기</a>
        </div>

        <div class="gnb_btn" onclick="gnb()">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <div class="gnb_mo" id="gnb_mo">
            <div class="gnb_close" onclick="gnbclose()">
                <span></span>
                <span></span>
            </div>
            <nav class="gnb_mo_nav">
                <div class=""><a href="<%=request.getContextPath()%>/promise/promise.html">약속</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/promise/promise.html#sec1">미디어 허브</a>
                    	<a href="<%=request.getContextPath()%>/promise/promise.html#sec2">전문가 역량</a>
                    	<a href="<%=request.getContextPath()%>/promise/promise.html#sec3">고객 가치</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/execution/product.html">실행</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/execution/product.html">위기관리 솔루션</a>
                        <a href="<%=request.getContextPath()%>/execution/culture.html">미디어 문화 사업</a>
                        <a href="<%=request.getContextPath()%>/execution/partner.html">파트너쉽</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/tech/tech.html">기술</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/tech/tech.html">dAIa</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/news/news.html">뉴스</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/news/news.html">회사소식</a>
                        <a href="<%=request.getContextPath()%>/news/insta.html">왓썹뉴스</a>
                    </div>
                </div>
                <div class=""><a href="<%=request.getContextPath()%>/company/company.html">회사</a>
                    <div class="gnb_2depth">
                        <a href="<%=request.getContextPath()%>/company/company.html">회사소개</a>
                        <a href="<%=request.getContextPath()%>/company/recruit.html">채용</a>
                        <a href="<%=request.getContextPath()%>/company/faq.html">자주 묻는 질문</a>
                        <a href="<%=request.getContextPath()%>/company/qna.html">문의하기</a>
                    </div>
                </div>
            </nav>

        <div class="util">
            <a href="https://www.scrapmaster.co.kr" target="_blank">스크랩마스터</a>
            <a href="<%=request.getContextPath()%>/company/qna.html" target="_blank">문의하기</a>
        </div>

        </div>
    </header>