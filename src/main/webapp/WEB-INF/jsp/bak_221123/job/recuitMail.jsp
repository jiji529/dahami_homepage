<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="http://dahami.com/dahami_favicon.ico">
<title>다하미 채용 지원</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
</head>

<script type="text/javascript">
$(document).ready(function (){
	$('.callcenter').on('click', function(e) {
		$("#pop3").css('display','block');
	});
	
	$('.pop_close').on('click', function(e) {
		$("#pop3").css('display','none');
	});
	
	$(".job_send").on('click', function(e) {
		
		var name = "";
		var phone = "";
		var email = "";
		var title = "";
		var tempPhone = "";
		var tempEmail = "";
		var chkflag = false;
		
		name = $('#commuName').val();
		phone = $('#firNum').val()+"-"+$('#midNum').val()+"-"+$('#lastNum').val();
		email = $('#firEmail').val()+"@"+$('#lastEmail').val();
		title = $('#commuTitle').val();
		fileFullPath = $('#uploadfile').val();
		
		tempPhone = $('#firNum').val()+$('#midNum').val()+$('#lastNum').val();
		tempEmail = $('#firEmail').val()+$('#lastEmail').val();
		chkflag = $('#chk').prop('checked');
		
		$('#reName').val(name);
		$('#rePhone').val(phone);
		$('#reEmail').val(email);
		$('#reTitle').val(title);
		
		if(chkflag  == false){
			alert("개인정보 수집에 동의 하여 주십시오");
			$('#chk').focus();
		}else if(name == ""){
			alert("성명을 기입하여 주십시오");
			$('#commuName').focus();
			return false;
		}else if(tempPhone == ""){
			alert("연락처를 기입하여 주십시오");
			$('#firNum').focus();
			return false;
		}else if(tempEmail == ""){
			alert("이메일을 기입하여 주십시오");
			$('#firEmail').focus();
			return false;
		}else if(title == ""){
			alert("제목을 기입하여 주십시오");
			$('#commuTitle').focus();
			return false;
		}else if($('#uploadfile').val() == ""){
			alert("파일을 첨부 하여 주십시오");
			$('#uploadfile').focus();
			return false;
		}else{
			var form = new FormData(document.getElementById('frm'));

			 $.ajax({
			      url: "/job/sendEmail.html",
			      data: form,
			      dataType: 'text',
			      processData: false,
			      contentType: false,
			      type: 'POST',
			      success: function (response) {
			    	 console.log(response);
			    	 alert("메일이 성공적으로 등록 되었습니다.");
			    	 response_jsonlst();
			      },
			      error: function (jqXHR) {
			        console.log('error');
			        alert("메일 등록에 실패 하였습니다.");
			      }
			 });
		}
	});
});

//success성공시 성공 여부 확인 창
function response_jsonlst(){
	
	$('#commuName').val("");
	$('#firNum').val("");
	$('#midNum').val("");
	$('#lastNum').val("");
	$('#firEmail').val("")
	$('#lastEmail').val("");
	$('#commuTitle').val("");
	$('#uploadfile').val("");
	
	tempPhone = $('#firNum').val()+$('#midNum').val()+$('#lastNum').val();
	tempEmail = $('#firEmail').val()+$('#lastEmail').val();
	
}
</script>
<body>
<div id="pop3" style="display:none;">
    <div class="pop_bg"></div>
    <div class="pop_layer pop_1">
        <h1>문의하기</h1>
        <div class="pop_wrap">
            <div class="pop_close"><p>닫기</p></div>
            <div class="pop_cont">
                <img src="/images/callcenter.png" />
            </div>
        </div>
    </div>
</div>
<div id="wrap">
    <div id="gnbcruit">
        <h1><a href="/job/jobLst.html">DAHAMI Recruit</a></h1>
        <div class="callcenter"><a href="#">문의하기</a></div>
    </div>
    <div class="contents">
        <div class="sub_top sub_img3">
            <h4>다하미와 함께 성장할 인재를 모집합니다. </h4>
        </div>
        <div id="job">
            <div class="job">
                <div class="inner">
                    <h3>지원하기</h3>
                    <p>우수한 인재들의 지원을 기다립니다.
                        </dd>
                </div>
                <div class="tab">
                <ul class="tab2">
                    <a href="/job/jobLst.html?loc=all" target="_parent"><li class="on">전체</li></a>
                    <a href="/job/jobLst.html?loc=new" target="_parent"><li>신입</li></a>
                    <a href="/job/jobLst.html?loc=career" target="_parent"><li>경력</li></a>
                </ul></div>
                <form id="frm" name="frm" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="reName" id="reName" value="" />
                <input type="hidden" name="rePhone" id="rePhone" value="" />
                <input type="hidden" name="reEmail" id="reEmail" value="" />
                <input type="hidden" name="reTitle" id="reTitle" value="" />
                <input type="hidden" name="rePath" id="rePath" value="" />
                
                <div class="job_box">
                    <div class="agree_box"> <strong>[개인정보 수집 등에 대한 동의]</strong><br>
                        <br>
                        <strong>1. 개인정보 수집 항목 및 목적</strong><br>
                       	 해당 페이지에서 채용 공고에 지원하는 내용에 대해 지원자와 원활한 의사소통을 위한 목적으로 아래 항목을 수집합니다.<br>
                        : 이름, 이메일 주소, 연락처<br>
                        <br>
                        <strong>2. 개인정보의 보유 및 이용기간</strong><br>
                        : 수집된 개인정보는 보유 및 이용 목적이 완료된 후 즉시 파기됩니다. 또한 ‘문의하기’를 통해 삭제 요청을 하는 경우 3일 이내 파기됩니다.<br>
                        <br>
                        	※ 귀하는 이에 대한 동의를 거부할 수 있으며, 동의하지 않으실 경우 지원이 불가능할 수 있음을 알려드립니다.<br>
                        <br>
                    </div>
                    <div class="agree_check"><p>
                        <input id="chk" type="checkbox">
                        <label for="agree">개인정보 수집 및 이용에 동의합니다.</label>
                        </p> </div>
                    <h3>지원하기</h3>
                    <dl>
                        <dt>성명</dt>
                        <dd>
                            <input type="text" id="commuName" />
                        </dd>
                        <dt>연락처</dt>
                        <dd>
                            <input type="text" class="num" id="firNum" maxlength="3" />
                            <span>-</span>
                            <input type="text" class="num" id="midNum" maxlength="4" />
                            <span>-</span>
                            <input type="text" class="num" id="lastNum" maxlength="4" />
                        </dd>
                        <dt>이메일</dt>
                        <dd>
                            <input type="text" class="mail" id="firEmail" />
                            <span>@</span>
                            <input type="text" class="mail" id="lastEmail" />
                        </dd>
                        <dt>제목</dt>
                        <dd>
                            <input type="text" id="commuTitle" placeholder="ex)전략기획_지원자 홍길동" />
                        </dd>
                        <dt class="main_cont">파일 업로드</dt>
                        <dd class="main_cont">
                            <input type="file" id="uploadfile" name="uploadfile" />
                        </dd>
                        
                    </dl>
                    <div class="job_send" style="cursor: pointer"><p>등록</p></div>
                </div>
                </form>
            </div>
        </div>
    </div>
    <div id="bottom">
    	<jsp:include page="../common/footer.jsp"></jsp:include>
    </div>
    <div id="top"><a href="#">Top</a></div>
</div>
</body>
</html>
