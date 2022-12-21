<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<jsp:include page="../common/head_meta.jsp"/>
</head>

<body>
    <jsp:include page="../common/header.jsp"/>

    <section class="sublist_area">
        <div class="inner">
            <h2>회사</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/company.html">회사소개</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/recruit.html">채용</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/faq.html">자주 묻는 질문</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/company/qna.html">문의하기</a></div>
            </div>
        </div>
    </section>
    <section class="sub_faq">
        <div class="inner">
            <div class="sub_tit">제휴/서비스 문의</div>
            <h2 class="sub_txt">제휴 또는 서비스 상담을 원하시면 아래 전화 또는 메일로 연락 주세요.<br>
                기타 사항은 문의하기를 이용해 주시면 신속히 안내해드리겠습니다.</h2>
        </div>
    </section>
    <section class="subimg img_qna"></section>
    <section class="sub_qna1">
        <div class="inner grid2">
            <div class="qna_box">
                <h2>매체 제휴</h2>
                <p><span>연락처</span>02-593-4174 (내선 218)</p>
                <p><span>메일</span>seoski@dahami.com</p>
            </div>
            <div class="qna_box">
                <h2>서비스 상담</h2>
                <p><span>연락처</span>02-593-4174 (내선 220, 230)</p>
                <p><span>메일</span>junggyu123@dahami.com<br>
                    <span></span>khim83@dahami.com</p>
            </div>
        </div>
    </section>
    <section class="sub_qna">
        <div class="inner call_box">
            <h3>개인정보 수집 및 이용동의</h3>
            <div class="agree_box">
                <strong>1. 개인정보 수집 항목 및 목적</strong><br>
                다하미커뮤니케이션즈는 홈페이지 문의하기에서 질문하기를 통해 질문하신 내용에 대해 관리자가 문의자와 원활히 의사소통 하기 위한 목적으로 아래와 같은 항목을 수집합니다.<br>
                : 성명, 연락처, 이메일 주소<br>
                <br>
                <strong>2. 개인정보의 보유 및 이용기간</strong><br>
                : 수집된 개인정보는 보유 및 이용 목적이 완료된 후 즉시 파기됩니다. 또한 ‘문의하기’를 통해 삭제 요청을 하는 경우 3일 이내 파기됩니다.<br>
                <br>
                ※ 귀하는 이에 대한 동의를 거부할 수 있으며, 동의하지 않으실 경우 질문하기를 통한 이메일 발송은 불가능함을 알려드립니다.
                <br>
            </div>
            <div class="agree_check">
                <p>
                    <input id="agree" type="checkbox">
                    <label for="agree">개인정보 수집 및 이용에 동의합니다.</label>
                </p>
            </div>

            <h3>기본정보 입력</h3>
            <dl>
                <dt>성명</dt>
                <dd>
                    <input type="text" id="commuName" placeholder="성명">
                </dd>
                <dt>전화번호</dt>
                <dd>
                    <input type="text" class="num" id="Num" placeholder="전화번호">
                </dd>
                <dt>이메일</dt>
                <dd>
                    <input type="text" class="mail" id="mail" placeholder="이메일">
                </dd>
            </dl>
            <h3>문의 내용 입력</h3>
            <dl>
                <dt>제목</dt>
                <dd>
                    <input type="text" id="commuTitle" placeholder="제목을 입력해주세요.">
                </dd>
                <dt class="main_cont">질문내용</dt>
                <dd class="main_cont">
                    <textarea id="commuContents"></textarea>
                </dd>
            </dl>
            <div class="call_send btn_area">
                <p class="btn btn_bk">등록</p>
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
        	// 이메일 보내기
        	$(".call_send").on('click', function(e) {
        		var name = "";
        		var phone = "";
        		var email = "";
        		var title = "";
        		var contents = "";
        		var tempPhone = "";
        		var tempEmail = "";
        		var chkflag = false;

        		name = $('#commuName').val();
        		phone = $('#Num').val();
				email = $('#mail').val();
        		title = $('#commuTitle').val();
        		contents = $('#commuContents').val();

        		tempPhone = $('#Num').val();
        		tempEmail = $('#mail').val();
        		chkflag = $('#agree').prop('checked');

        		if(chkflag  == false){
        			alert("개인정보 수집에 동의 하여 주십시오");
        			$('#agree').focus();
        		}else if(name == ""){
        			alert("성명을 기입하여 주십시오");
        			$('#commuName').focus();
        			return false;
        		}else if(tempPhone == ""){
        			alert("연락처를 기입하여 주십시오");
        			$('#Num').focus();
        			return false;
        		}else if(tempEmail == ""){
        			alert("이메일을 기입하여 주십시오");
        			$('#mail').focus();
        			return false;
        		}else if(title == ""){
        			alert("제목을 기입하여 주십시오");
        			$('#commuTitle').focus();
        			return false;
        		}else if(contents == ""){
        			alert("내용을 기입하여 주십시오");
        			$('#commuContents').focus();
        			return false;
        		}else{
        			$.ajax({
        				url : "<%=request.getContextPath()%>/community/sendEmail.html",
        				cache : false,
        			    dataType: 'json',
        			    contentType: 'application/json; charset=utf-8',
        				data: {
        					name: name,
        					phone: phone,
        					email: email,
        					title: title,
        					contents: contents
        		        },
        				success: response_jsonlst
        			});
        		}
        	});
        })
        
        // success성공시 성공 여부 확인 창
		function response_jsonlst(){
			alert("관리자에게 문의사항이 전달 되었습니다.");
		
			$('#commuName').val("");
			$('#Num').val("");
			$('#mail').val("")
			$('#commuTitle').val("");
			$('#commuContents').val("");
		
			tempPhone = $('#Num').val();
			tempEmail = $('#mail').val();		
		}
        
      //숫자만 입력 가능하게
    	$(".num").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                 // Allow: Ctrl+A
                (e.keyCode == 65 && e.ctrlKey === true) ||
                 // Allow: Ctrl+C
                (e.keyCode == 67 && e.ctrlKey === true) ||
                 // Allow: Ctrl+X
                (e.keyCode == 88 && e.ctrlKey === true) ||
                 // Allow: home, end, left, right
                (e.keyCode >= 35 && e.keyCode <= 39)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105 )){
                e.preventDefault();
            }
        });
    </script>
</html>