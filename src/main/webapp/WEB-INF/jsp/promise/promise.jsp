<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<jsp:include page="../common/head_meta.jsp"/>
</head>
<style>
	html{
		scroll-behavior: smooth;
	}
</style>

<body>
    <jsp:include page="../common/header.jsp"/>

    <section class="sublist_area">
        <div class="inner">
            <h2>약속</h2>
            <div class="subtit_tit row">
                <h3 class="col5">미디어를 가장 잘 아는<br>
                    위기관리 파트너가 되겠습니다.</h3>
                <p class="subtit_txt col7">우리는 언제 어디서나 신뢰할 만한 파트너가 되겠습니다.<br>
                    제품과 서비스의 혁신, 최고의 전문가 역량 보유, 휴머니즘 정신의 추구는<br>
                    모든 고객과 비즈니스 파트너에 대한 우리의 약속입니다.</p>
            </div>
        </div>
    </section>
    <section class="sub_promise1">
        <div class="inner">
            <div class="sub_tit">미디어 서비스 허브</div>
            <div class="sub_txt">미디어 콘텐츠와 기술에 기반한 서비스 허브</div>
            <div class="sub_tit">전문가 역량</div>
            <div class="sub_txt">미디어 콘텐츠의 수급, 제작, 연구개발, 품질관리, <br>
                마케팅, 저작권 관리 등 전문가들
            </div>
            <div class="sub_tit">사회적 가치</div>
            <div class="sub_txt">사회의 발전에 기여
            </div>
        </div>
    </section>

    <section class="sub_promise2">
        <div class="inner">
            <div class="li3 reveal" id="sec1">
                <div class="li3_imgbox"></div>
                <div class="li3_box">
                    <div class="li3_tit">미디어 서비스 허브</div>
                    <div class="li3_txt">미디어 콘텐츠와 기술에 기반한<br>서비스의 허브(HUB)로!</div>
                    <div class="li3_exp">“위기에서 안전한 조직은 없다. 모든 조직은 어떻게 위기를 극복할 것인가를 고민하고 준비해야 한다” <span>– Timothy Coombs, US (언론학자)</span>
                    </div>
                    <div class="li3_cont">조직은 점점 더 복잡하고 혼란스러운 미디어 환경에 노출되고 있습니다. 신문, 방송, 온라인 등 미디어 콘텐츠와 서비스의 활용은 조직 성장에 필수적인 요소가 되었습니다.<br>
                        다하미는 미디어 콘텐츠, 데이터와 기술에 기반한 통합 솔루션을 제공하며, 고객 스스로가 장기적으로 미디어 통찰력을 축적하고 성장하는 데 도움을 드립니다.</div>
                </div>
            </div>
            <div class="li3 reveal" id="sec2">
                <div class="li3_imgbox"></div>
                <div class="li3_box">

                    <div class="li3_tit">전문가 역량</div>
                    <div class="li3_txt">미디어 전문가들이 <br>
                        최상의 고객 경험을 제공</div>
                    <div class="li3_cont">경험과 역량을 갖춘 미디어 위기관리 전문가들이 고객과 상담을 통해 모니터링, 리뷰, 분석, 대응 등 다양한 서비스를 제공합니다.<br><br>
                        20년 이상 미디어 콘텐츠 수급, R&amp;D, 마케팅, 저작권 관리 등 분야에 노하우를 가진 전문가들이 함께 하고 있습니다.
                        <br><br>
                        고객 신뢰성, 서비스 안정성, 분야 전문성은 최상의 고객 경험을 제공할 것입니다.</div>
                </div>
            </div>
            <div class="li3 reveal" id="sec3">
                <div class="li3_imgbox"></div>
                <div class="li3_box">
                    <div class="li3_tit">사회적 가치</div>
                    <div class="li3_txt">사회적 가치를 생각하는 회사</div>
                    <div class="li3_cont">지속 성장을 위한 윤리 경영, 삶의 질 향상과 좋은 일자리 창출을 위해 노력하고 있습니다.
                        <br> <br>
                        제품을 위한 제품, 기술을 위한 기술을 추구하지 않습니다. 사람과 고객 중심의 제품과 서비스를 제공합니다.</div>
                </div>
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
    </script>
</html>