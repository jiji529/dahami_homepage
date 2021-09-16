<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
            <h1><a href="<%=request.getContextPath()%>/index.html">logo</a></h1>
            <ul class="gnb_menu">
                <li class="menu">
                    <dl class="gnb_dl">
                        <dt><a href="<%=request.getContextPath()%>/company/company.html">회사소개</a></dt>
                        <dd class="">
                            <ul class="navi_sub_ul">
                                <li><a href="<%=request.getContextPath()%>/company/company.html?loc=intros" target="_parent">다하미 소개</a></li>
                                <li><a href="<%=request.getContextPath()%>/company/company.html?loc=history" target="_parent">연혁</a></li>
                                <li><a href="<%=request.getContextPath()%>/company/company.html?loc=map" target="_parent">오시는 길</a></li>
                            </ul>
                        </dd>
                    </dl>
                </li>
                <li class="menu">
                    <dl class="gnb_dl">
                        <dt><a href="<%=request.getContextPath()%>/service/scrapmaster.html">서비스소개</a></dt>
                        <dd class="">
                            <ul class="navi_sub_ul">
                                <li><a href="<%=request.getContextPath()%>/service/scrapmaster.html" target="_parent">스크랩마스터</a></li>
                                <li><a href="<%=request.getContextPath()%>/service/clipping.html" target="_parent">클리핑온</a></li>
                                <li><a href="<%=request.getContextPath()%>/service/tpaper.html" target="_parent">티페이퍼</a></li>
                                <li><a href="<%=request.getContextPath()%>/service/newsbank.html" target="_parent">뉴스뱅크</a></li>
                                <li><a href="<%=request.getContextPath()%>/service/enie.html" target="_parent">e-NIE</a></li>
                                <li><a href="<%=request.getContextPath()%>/service/newsplaza.html" target="_parent">뉴스플라자</a></li>
                                <li><a href="<%=request.getContextPath()%>/service/webapp.html" target="_parent">웹&amp;앱 서비스</a></li>
                            </ul>
                        </dd>
                    </dl>
                </li>
                <li class="menu">
                    <dl class="gnb_dl">
                        <dt><a href="<%=request.getContextPath()%>/recruit/recruit.html">인재경영</a></dt>
                        <dd class="">
                            <ul class="navi_sub_ul">
                                <li><a href="<%=request.getContextPath()%>/recruit/recruit.html?loc=talent" target="_parent">인재상</a></li>
                                <li><a href="<%=request.getContextPath()%>/recruit/recruit.html?loc=employ" target="_parent">채용전형</a></li>
                                <li><a href="<%=request.getContextPath()%>/recruit/recruit.html?loc=welfare" target="_parent">복리후생</a></li>
                            </ul>
                        </dd>
                    </dl>
                </li>
                <li class="menu">
                    <dl class="gnb_dl">
                        <dt><a href="<%=request.getContextPath()%>/community/community.html">커뮤니티</a></dt>
                        <dd class="">
                            <ul class="navi_sub_ul">
                                <li><a href="<%=request.getContextPath()%>/community/community.html?loc=new" target="_parent">새소식</a></li>
                                <li><a href="<%=request.getContextPath()%>/community/community.html?loc=faq" target="_parent">자주 묻는 질문</a></li>
                                <li><a href="<%=request.getContextPath()%>/community/community.html?loc=call" target="_parent">문의하기</a></li>
                            </ul>
                        </dd>
                    </dl>
                </li>
            </ul>
            <div class="navi_layer" style="height: 260px; display: none;"> </div>
            <div class="scrapmaster"><a href="http://www.scrapmaster.co.kr" target="_blank">스크랩마스터 바로가기</a></div>
            <div class="callcenter"><a href="<%=request.getContextPath()%>/community/community.html?loc=calls" target="_parent">고객센터</a></div>
            <div class="m-btn-menu">
                <button class="m-open" style="">메뉴열기</button>
                <button class="m-close" style="">메뉴닫기</button>
            </div>