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
	<jsp:include page="common/head_metaEN.jsp"/>
</head>

<body>
	<jsp:include page="common/headerEN.jsp"/>

    <section class="main_vis">
        <video id="video" muted="" loop="" playsinline="" autoplay="" video-playable-inline="" poster="">
            <source type="video/mp4" src="<%=request.getContextPath()%>/images/main.mp4">
        </video>
        <div class="inner">
            <div class="main_v_tit1" style="display:none;">Your risk management partner, <br>who understands the news best.</div>
            <div class="main_v_tit2 reveal">We provide news content and media intelligence solutions for <br>your organization's public relations, marketing, and strategic decisions.
<br></div>
            <div class="main_v_tit3 reveal">Our top media intelligence experts provide knowledge <br>beyond information with a personalized touch.</div>            
        </div>
        <span class="ico_scroll"></span>
    </section>
    <section class="main1">
        <div class="inner">
            <h2 class="main_tit ">Our Promise</h2>
            <p class="main_txt ">We promise to be your risk management partner, who understands the news best.</p>
            <div class="grid3">
                <div class="li1 reveal">
                    <div class="li1_imgbox"></div>
                    <div class="li1_tit">Media Service Hub</div>
                    <div class="li1_txt">A technology-based service hub for <br>media content!</div>
                </div>
                <div class="li1 reveal">
                    <div class="li1_imgbox"></div>
                    <div class="li1_tit">Expert Capabilities</div>
                    <div class="li1_txt">Media experts deliver the best customer experience.</div>
                </div>
                <div class="li1 reveal">
                    <div class="li1_imgbox"></div>
                    <div class="li1_tit">Customer-First</div>
                    <div class="li1_txt">A company that creates value by experiencing customer concerns together.</div>
                </div>
            </div>
        </div>
    </section>
    <section class="main2">
        <div class="inner reveal">
            <h2 class="main_tit ">Risk Management Solutions</h2>
            <p class="main_txt">Dedicated solutions for risk management that offer insights in the complex media<br> environment <span class="none">of newspapers, broadcasts, online news, SNS, and more</span>.
               </p>
            <div class="grid2 reveal">
                <div class="li2">
                	<a href="<%=request.getContextPath()%>/execution/product_sub/scrapmasterEN.html">
                    <div class="li2_tit">ScrapMaster</div>
                    <div class="li2_txt">The world's first newspaper scraping program, ScrapMaster is the best media solution trusted and verified by experts from various fields.</div>
                    </a>
                </div>
                <div class="grid2r">
                    <div class="li2">
                    <a href="<%=request.getContextPath()%>/execution/product_sub/clippingonEN.html">
                        <div class="li2_tit">ClippingOn</div>
                        <div class="li2_txt"><b>ClippingOn </b>supports efficient risk response with <br>real-time notifications during major news events.</div>
                    </a>
                    </div>                    
                    <div class="li2">
                    <a href="<%=request.getContextPath()%>/execution/product_sub/newsplazaEN.html">
                        <div class="li2_tit">NewsPlaza</div>
                        <div class="li2_txt">We provide a comprehensive range of online news from major Korean media outlets.<span class="none">
It is suitable for both internal use, such as news monitoring, and external distribution for promotional purposes.</span></div>
                    </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="main3 animated">
        <div class="inner reveal">
            <h2 class="main_tit animated">Media Culture Business</h2>
            <p class="main_txt animated">We conduct cultural projects utilizing media, such as promoting a culture of reading and newspaper literacy education, which are important in the digital age.
We are discovering and operating projects that can contribute to the development of society and culture through the media.</p>
            <div class="grid2">
                <div class="li2">
                	<a href="<%=request.getContextPath()%>/execution/culture_sub/tpaperEN.html">
                    <div class="li2_tit">T-Paper</div>
                    <div class="li2_txt">Enjoy high-quality newspapers and magazines on the large screen of the kiosk.<span class="none">
The intuitive UI makes it easy for users to enjoy the content.</span></div>
                    </a>
                </div>
                <div class="grid2r">
                    <div class="li2">
                    	<a href="<%=request.getContextPath()%>/execution/culture_sub/newsbankEN.html">
                        <div class="li2_tit">NewsBank</div>
                        <div class="li2_txt">NewsBank is a photo museum that captures the vibrant scenes of Korean history. <span class="none">We provide millions of reportage photos spanning from the turbulent times of modern history to the contemporary era.</span></div>
                        </a>
                    </div>
                    <div class="li2">
                    	<a href="<%=request.getContextPath()%>/execution/culture_sub/enieEN.html">
                        <div class="li2_tit">e-NIE</div>
                        <div class="li2_txt">e-NIE is a service that allows you to conveniently scrap newspapers on the computer by transferring newspapers to the computer as is, anywhere with internet access.</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="main4">
        <div class="inner reveal">
            <div class="grid1-3">
                <h2 class="main_tit">Company News</h2>
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
            <h2 class="main_tit">Partnerships</h2>
            <p class="main_txt">Over 600 media outlets and the Korea Press Foundation are working with Dahami.</p>
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
            <h2 class="main_tit">Whatssupnews</h2>
            <p class="main_txt">Introducing news that can read tomorrow.
Search for <b>'whatssupnews'</b> on Instagram.</p>
            <div class="m_card">
            </div>
        </div> 
    </section>

    <section class="main7">
        <div class="inner reveal">

            <h2 class="main_tit">We are looking for talented individuals with a spirit of challenge to work with us.</h2>
            <div class="btn_area"><a class="btn" href="https://www.saramin.co.kr/zf_user/company-info/view-inner-recruit?csn=SGVIZUprUTdZRU92OHBMSksrMWF2dz09" target="_blank">View open positions</a></div>
        </div>
    </section>
    
    <jsp:include page="common/footerEN.jsp"/>

</body>

    <script>
        /* document.getElementsByTagName('video')[0].playbackRate = 0.4; */
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
        
        // 스크롤시, 문구가 겹쳐보이는 현상이 있어 트랜지션의 시점을 캐치하여 개선하였음
        const transition = document.querySelector('.main_v_tit2');
        
        // 트랜지션 시작시점
        transition.ontransitionstart = function() {
          if($('.main_v_tit2').hasClass('active')) {
          	$('.main_v_tit1').css('display','none');
          }
        };
          
       	// 트랜지션 종료시점
        transition.ontransitionend = function() {
          if($('.main_v_tit2').hasClass('active')==false) {
        	$('.main_v_tit1').css('display','block');
          } 
        };

        window.addEventListener('scroll', function() {
        	// 스크롤시 이벤트 트리거
        	scrollText();
        });	      
        
        function scrollText() {
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
            
            // 최초 시작시점에는 무조건 보이게 한다.
            if($('.main_v_tit2').hasClass('active')==false && $('.main_v_tit3').hasClass('active')==false) {
            	$('.main_v_tit1').css('display','block');
            }

            // 그리고 스크롤이 시작되면, 아래의 조건식에서 분기한다.
            if (eHeight >= 0 && eHeight < first) {
                $('.main_v_tit2').removeClass('active');
                $('.main_v_tit3').removeClass('active');
            } else if (eHeight >= first && eHeight < second) {
                $('.main_v_tit2').addClass('active');
                $('.main_v_tit3').removeClass('active');
            } else if (eHeight >= second && eHeight < third) {
                $('.main_v_tit2').addClass('active');
                $('.main_v_tit3').addClass('active');
            } else if (eHeight >= third) {
                $('.main_v_tit2').addClass('active');
                $('.main_v_tit3').addClass('active');
            }
        }
        
        $(document).ready(function() {
        	// 스크롤이 특정 위치에 있을때, 새로고침 등으로 새 페이지를 열면 겹치는 현상을 제어함
        	scrollText();
        	
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
					html += '<li><a id="instaLink'+i+'" href='+json[0].data[i].permalink+' target="_blank"><img id="insta'+i+'" src='+json[0].data[i].media_url+' onerror="noImage(\''+i+'\')"></a></li>';					
        		}
				html += '</ul>';					
		        $('.m_card').html(html);
        	}
        })
        
		function noImage(i) {
        	// 이미지가 문제가 생길경우, 디폴트 이미지를 보여주기 위한 예외처리
			if(i>=0 && i<=5) {
        		var instaURL = ["https://www.instagram.com/p/Cms8Akdy25W/","https://www.instagram.com/p/CmcwKAKyDbp/",
        			"https://www.instagram.com/p/CmaLCAUvo9J/","https://www.instagram.com/p/CmLj4S_SCdX/",
        			"https://www.instagram.com/p/Cl7TYsRyiy7/","https://www.instagram.com/p/ClUwC99ykUJ/"];
	        	$('#insta'+i+'').attr('src','/images/insta'+i+'.jpg');
	        	$('#instaLink'+i+'').attr('href',instaURL[i]);
        	}        	     	
        }
    </script>
    
</html>