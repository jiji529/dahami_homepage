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
	<jsp:include page="common/head_meta.jsp"/>
</head>

<body>
	<jsp:include page="common/header.jsp"/>

    <section class="main_vis">
        <video id="video" muted="" loop="" playsinline="" autoplay="" video-playable-inline="" poster="">
            <source type="video/mp4" src="<%=request.getContextPath()%>/images/main.mp4">
        </video>
        <div class="inner">
            <div class="main_v_tit1">뉴스를 가장 잘 이해하는<br>위기관리 파트너</div>
            <div class="main_v_tit2 reveal">조직의 홍보, 마케팅, 전략 결정 등에 활용할 수 있도록<br>
                수많은 뉴스 콘텐츠를 공급하고<br>
                언론 위기에 선제 대응할 수 있도록 도와드립니다.</div>
            <div class="main_v_tit3 reveal">지속적인 IT혁신을 통해 <br>비즈니스 경쟁력을 강화하고 <br>업계를 선도하고 있습니다.</div>            
        </div>
        <span class="ico_scroll"></span>
    </section>
    <section class="main1">
        <div class="inner">
            <h2 class="main_tit ">약속</h2>
            <p class="main_txt ">뉴스를 가장 잘 이해하는 위기관리 파트너가 되겠습니다</p>
            <div class="grid3">
                <div class="li1 reveal">
                    <div class="li1_imgbox"></div>
                    <div class="li1_tit">미디어 서비스 허브</div>
                    <div class="li1_txt">미디어 콘텐츠와 기술에 기반한 서비스의 허브(HUB)로!</div>
                </div>
                <div class="li1 reveal">
                    <div class="li1_imgbox"></div>
                    <div class="li1_tit">전문가 역량</div>
                    <div class="li1_txt">미디어 전문가들이 최상의 고객 경험을 제공</div>
                </div>
                <div class="li1 reveal">
                    <div class="li1_imgbox"></div>
                    <div class="li1_tit">고객 가치</div>
                    <div class="li1_txt">고객 가치를 생각하는 회사</div>
                </div>
            </div>
        </div>
    </section>
    <section class="main2">
        <div class="inner reveal">
            <h2 class="main_tit ">위기관리 솔루션</h2>
            <p class="main_txt">위기관리를 위한 전용 솔루션은 신문, 방송, 온라인 뉴스, SNS 등 <br>복잡한 미디어 환경에서 통찰을 제공하는
                최적의 제품과 서비스를 제공합니다.</p>
            <div class="grid2 reveal">
                <div class="li2">
                	<a href="<%=request.getContextPath()%>/execution/product_sub/scrapmaster.html">
                    <div class="li2_tit">스크랩마스터</div>
                    <div class="li2_txt">세계 최초의 신문 스크랩 프로그램인 스크랩마스터는<br>
                            각 분야 전문가들이 검증하고 신뢰하는 최고의 미디어 솔루션입니다.</div>
                    </a>
                </div>
                <div class="grid2r">
                    <div class="li2">
                    <a href="<%=request.getContextPath()%>/execution/product_sub/clippingon.html">
                        <div class="li2_tit">클리핑온</div>
                        <div class="li2_txt">방송사의 영상 뉴스는 시청자들에게 직접적인 인상을 남겨 파급력이 매우 큽니다.
                            클리핑온은 주요 뉴스 시간에 실시간 알림으로 효율적인 위기 대응을 지원합니다.</div>
                    </a>
                    </div>                    
                    <div class="li2">
                    <a href="<%=request.getContextPath()%>/execution/product_sub/newsplaza.html">
                        <div class="li2_tit">뉴스플라자</div>
                        <div class="li2_txt">국내 주요 언론사의 온라인 뉴스를 일괄 제공하고 있습니다. <br>
                            뉴스 모니터링 등 내부 업무뿐 아니라 홍보 목적의 대외 배포에 적합한 상품입니다.</div>
                    </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="main3 animated">
        <div class="inner reveal">
            <h2 class="main_tit animated">미디어 문화 사업</h2>
            <p class="main_txt animated">디지털 시대에 더 중요한 읽기문화의 보급, 신문활용교육 등 미디어를 활용한 문화 사업을 수행하고 있습니다.<br>
                우리는 미디어가 사회나 문화 발전에 기여할 수 있는 사업을 발굴해 운영하고 있습니다.</p>
            <div class="grid2">
                <div class="li2">
                	<a href="<%=request.getContextPath()%>/execution/culture_sub/tpaper.html">
                    <div class="li2_tit">티페이퍼</div>
                    <div class="li2_txt">키오스크의 큰 화면으로 고화질의 신문/잡지를 볼 수 있습니다.<br>
직관적인 UI로 사용자들이 편하게 콘텐츠를 감상할 수 있습니다.</div>
                    </a>
                </div>
                <div class="grid2r">
                    <div class="li2">
                    	<a href="<%=request.getContextPath()%>/execution/culture_sub/newsbank.html">
                        <div class="li2_tit">뉴스뱅크</div>
                        <div class="li2_txt">대한민국 역사의 현장을 생생하게 담은 보도사진 박물관입니다. 대한민국 격동의 근대사에서 현대사에 이르기까지 수 백만 건 이상의 보도사진을 제공합니다.</div>
                        </a>
                    </div>
                    <div class="li2">
                    	<a href="<%=request.getContextPath()%>/execution/culture_sub/enie.html">
                        <div class="li2_tit">e-NIE</div>
                        <div class="li2_txt">신문 기사와 구성은 학습자 특히 청소년의 인지학습능력을 키우고 가치관 및 인성을 발달시키는 데 큰 도움이 됩니다.</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="main4">
        <div class="inner reveal">
            <div class="grid1-3">
                <h2 class="main_tit">회사소식</h2>
                <div class="m_news">
                    <ul>
                    	<c:forEach var="result" items="${boardCdList}" varStatus="status">
							<li id="dt${status.count}" style="cursor: pointer;" onclick="evt(${status.count})">
		                        <span class="date">${boardCdList[status.count-1].regdate}</span>
		                        <span class="tit">${boardCdList[status.count-1].title}</span>
		                    </li>																				
							<li class="faq_dd" id="dd${status.count}" style='display: none;'>
								<p class="faq_contit">${boardCdList[status.count-1].title}</p>
								<p>${boardCdList[status.count-1].body}</p>
								<c:if test="${boardCdList[status.count-1].file1 ne ''}">
									<img src="http://board.scrapmaster.co.kr/files/${boardCdList[status.count-1].file1}" style="width:70%;"/>
								</c:if>
								<c:if test="${boardCdList[status.count-1].file2 ne ''}">
									<img src="http://board.scrapmaster.co.kr/files/${boardCdList[status.count-1].file2}" style="width:70%;"/>																	
								</c:if>
							</li>
						</c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="main5">
        <div class="inner reveal">
            <h2 class="main_tit">파트너쉽</h2>
            <p class="main_txt">600여개 신문과 언론재단이 다하미와 함께합니다.</p>
              <div class="m_partner">
                <div class="scroll">
                    <div class="scroll-wrap">
                        <div class="logo">
                        <li>경향신문</li>
                        <li>국민일보</li>
                        <li>동아일보</li>
                        <li>서울신문</li>
                        <li>세계일보</li>
                        <li>조선일보</li>
                        <li>중앙일보</li>
                        <li>한겨레</li>
                        <li>한국일보</li>
                        <li>e대한경제</li>
                        <li>디지털타임즈</li>
                        <li>매일경제</li>
                        <li>머니투데이</li>
                        <li>브릿지경제</li>
                        <li>서울경제</li>
                        <li>아주경제</li>
                        <li>이데일리</li>
                        <li>이투데이</li>
                        <li>전자신문</li>
                        <li>파이낸셜뉴스</li>
                        <li>한국경제</li>
                        </div>
                    </div>
                    <div class="scroll-wrap">
                        <div class="logo">
                        <li>경향신문</li>
                        <li>국민일보</li>
                        <li>동아일보</li>
                        <li>서울신문</li>
                        <li>세계일보</li>
                        <li>조선일보</li>
                        <li>중앙일보</li>
                        <li>한겨레</li>
                        <li>한국일보</li>
                        <li>e대한경제</li>
                        <li>디지털타임즈</li>
                        <li>매일경제</li>
                        <li>머니투데이</li>
                        <li>브릿지경제</li>
                        <li>서울경제</li>
                        <li>아주경제</li>
                        <li>이데일리</li>
                        <li>이투데이</li>
                        <li>전자신문</li>
                        <li>파이낸셜뉴스</li>
                        <li>한국경제</li>
                        </div>
                    </div>
                </div>
                <div class="scroll reverse">
                    <div class="scroll-wrap">
                        <ul class="logo">
                        <li>KBS</li>
                        <li>MBC</li>
                        <li>SBS</li>
                        <li>YTN</li>
                        <li>연합뉴스TV</li>
                        <li>JTBC</li>
                        <li>MBN</li>
                        <li>TV조선</li>
                        <li>채널A</li>
                        <li>한국경제TV</li>
                        <li>OBS</li>
                        <li>뉴스1</li>
                        <li>뉴시스</li>
                        <li>연합뉴스</li>
                        <li>뉴스와이어</li>
                        <li>아시아뉴스통신</li>
                        </ul>
                    </div>
                    <div class="scroll-wrap">
                        <ul class="logo">
                        <li>KBS</li>
                        <li>MBC</li>
                        <li>SBS</li>
                        <li>YTN</li>
                        <li>연합뉴스TV</li>
                        <li>JTBC</li>
                        <li>MBN</li>
                        <li>TV조선</li>
                        <li>채널A</li>
                        <li>한국경제TV</li>
                        <li>OBS</li>
                        <li>뉴스1</li>
                        <li>뉴시스</li>
                        <li>연합뉴스</li>
                        <li>뉴스와이어</li>
                        <li>아시아뉴스통신</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="main6">
        <div class="inner reveal">
            <h2 class="main_tit">왓썹뉴스</h2>
            <p class="main_txt">내일을 읽는 뉴스를 소개합니다.</p>
            <div class="m_card">
            </div>
        </div> 
    </section>

    <section class="main7">
        <div class="inner reveal">

            <h2 class="main_tit">다하미와 함께할 도전하는 인재를 찾습니다.</h2>
            <div class="btn_area"><a class="btn" href="https://www.saramin.co.kr/zf_user/company-info/view-inner-recruit?csn=SGVIZUprUTdZRU92OHBMSksrMWF2dz09" target="_blank">채용 중인 공고 보기</a></div>
        </div>
    </section>
    
    <jsp:include page="common/footer.jsp"/>

</body>

    <script>
        document.getElementsByTagName('video')[0].playbackRate = 0.4;
    </script>

    <script>
        var container = document.querySelector('.gnb');
        container.addEventListener('mouseenter', function() {
            this.classList.add('on');
        })
        container.addEventListener('mouseleave', function() {
            this.classList.remove('on');
        })
        
        // 새소식 클릭시 반응
		function evt(newwin){
			var objid=document.getElementById("dd"+newwin);
		
			//class='on'
		
			if(objid.style.display=="block")
			{
			  objid.style.display="none";
			  $("#dt"+newwin).removeClass();
			}
			else{
			  $("#dd"+newwin).css('display','none');
			  $("#dt"+newwin).removeClass();
			  objid.style.display="block";
			  $("#dt"+newwin).addClass("on");
			}
		}

        window.addEventListener('scroll', function() {
            var body = document.body,html = document.documentElement;

            var height = Math.max(body.scrollHeight, body.offsetHeight, html.clientHeight, html.scrollHeight, html.offsetHeight);
            var eHeight = window.scrollY / height;
            var endHeight = document.querySelector('.main1').scrollHeight / height;
            var isMobile = /Mobi/i.test(window.navigator.userAgent); // "Mobi" 가 User agent에 포함되어 있으면 모바일

            var between = 0;
            if(isMobile==false) {
                between = endHeight / 4;        
            } else {
                between = endHeight / 8;        
            }          

            var first = 0 + between;
            var second = first + between;
            var third = second + between;
            var forth = third + between;

            if (eHeight >= 0 && eHeight < first) {
                $('.main_v_tit1').css('display','block');
                $('.main_v_tit2').removeClass('active');
                $('.main_v_tit3').removeClass('active');
            } else if (eHeight >= first && eHeight < second) {
                $('.main_v_tit1').css('display','none');
                $('.main_v_tit2').addClass('active');
                $('.main_v_tit3').removeClass('active');
            } else if (eHeight >= second && eHeight < third) {
            	$('.main_v_tit1').css('display','none');
                $('.main_v_tit2').addClass('active');
                $('.main_v_tit3').addClass('active');
            } else if (eHeight >= third) {
            	$('.main_v_tit1').css('display','none');
                $('.main_v_tit2').addClass('active');
                $('.main_v_tit3').addClass('active');
            }
        });	      
	      
	      function getCookie(name) {
	            var wcname = name + '=', wcstart, wcend, end, i = 0;
	            while (i <= document.cookie.length) {
	                wcstart = i;
	                wcend = (i + wcname.length);
	                if (document.cookie.substring(wcstart, wcend) == wcname) {
	                    if((end = document.cookie.indexOf(';', wcend)) == -1)
	                    end = document.cookie.length;
	                    return document.cookie.substring(wcend, end);
	                }
	                i = document.cookie.indexOf('', i) + 1;
	                if (i == 0) break;
	            }
	            return '';
	        }
	      
	      function popup(startDate, endDate, imgWidth, imgHeight) { // 오늘 하루동안 그만 보기 팝업
	            var url = '<%=request.getContextPath()%>/common/popup.html';
	            var arg = 'width=' + imgWidth + 'px, height=' + (imgHeight+34) + 'px, status=no, scrollbars=no, toolbar=no, menubar=no';
	            var today = new Date();
	            var startDay = new Date(startDate.replace(/-/g, "/") + ' 00:00:00');
	            var endDay = new Date(endDate.replace(/-/g, "/") + ' 23:59:59');
	            if ((getCookie('popup') != 'start') && (today >= startDay) && (today <= endDay)) {
	                window.open(url, '', arg);
	            }
	        }
        
        $(document).ready(function() {
        	popup('2022-11-24', // 'YYYY-MM-DD' : startDate
	                  '2022-11-29', // 'YYYY-MM-DD': endDate
	                  400, // n : imgWidth
	                  400 // n : imgHeight
	            );
        	
        	$.ajax({
	        	type : "GET",          
			    url : "<%=request.getContextPath()%>/loadInstaData.html",      
			    data: "",
			    dataType : "json",
			    contentType : 'application/json; charset=utf-8',
				cache : false,
			    success : RenderInsta,
			    error : RenderInsta
        	});
        	
        	function RenderInsta(json) {
        		var html = '';
				html += '<ul>';
        		for(var i=0; i<6; i++) {
					html += '<li><a href='+json[0].data[i].permalink+' target="_blank"><img src='+json[0].data[i].media_url+'></a></li>';						
        		}
				html += '</ul>';					
		        $('.m_card').html(html);
        	}        	      	
        })
    </script>
    
</html>