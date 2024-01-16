<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="../common/head_metaEN.jsp" />
</head>

<body>
    <jsp:include page="../common/headerEN.jsp" />

    <section class="sublist_area">
        <ul class="location">
            <li>
                <a href="<%=request.getContextPath()%>/indexEN.html" class="location_list">HOME</a>
            </li>
            <li>
                <span class="location_list">Contact Us</span>
            </li>
        </ul>
        <div class="inner">
            <h2>Company</h2>
            <div class="tab">
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/companyEN.html">About Us</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/recruitEN.html">Careers</a></div>
                <div class="tab_menu"><a href="<%=request.getContextPath()%>/company/faqEN.html">FAQ</a></div>
                <div class="tab_menu on"><a href="<%=request.getContextPath()%>/company/qnaEN.html">Contact Us</a></div>
            </div>
        </div>
    </section>
    <section class="sub_faq">
        <div class="inner">
            <div class="sub_tit">Partnership/Service Inquiries</div>
            <h2 class="sub_txt">For partnership or service discussions, please contact us by phone or email below.<br>
                For anything else, please use Contact Us and we'll get back to you as soon as possible.</h2>
        </div>
    </section>
    <section class="subimg img_qna"></section>
    <section class="sub_qna1">
        <div class="inner">
            <div class="qna_box">
                <h2>Contact Us</h2>
                <p><span>Tel</span>02-593-4174</p>
                <p><span>Email</span>helpdesk@dahami.com</p>
            </div>
        </div>
    </section>
    <section class="sub_qna">
        <div class="inner call_box">
            <h3>Consent to collect and use personal information</h3>
            <div class="agree_box">
                <strong>1. Personal Information Collection </strong><br>
                : Items and Purpose<br>
                : Dahami Communications collects the following items for the purpose of enabling the administrator to communicate with the inquirer regarding the questions asked through the inquiry on the NDPT website.<br>
                - Name, Phone Number, Company Name, Email Address<br><br>

                <strong>2. Retention and use period of personal information</strong><br>
                : The collected personal information is destroyed immediately after the purpose of retention and use is completed. In addition, if you request deletion through 'Contact Us', it will be destroyed within 3 days.<br><br>

                * You may refuse to agree to this. And if you do not agree, we will not be able to send you emails through Ask a Question.<br>

            </div>
            <div class="agree_check">
                <p>
                    <input id="agree" type="checkbox">
                    <label for="agree">I agree to collect and use personal information.</label>
                </p>
            </div>

            <h3>Basic Information</h3>
            <dl>
                <dt>Name</dt>
                <dd>
                    <input type="text" id="commuName" placeholder="Name">
                </dd>
                <dt>Phone Number</dt>
                <dd>
                    <input type="text" class="num" id="Num" placeholder="Phone Number">
                </dd>
                <dt>Email</dt>
                <dd>
                    <input type="text" class="mail" id="mail" placeholder="Email">
                </dd>
            </dl>
            <h3>Enter your inquiry</h3>
            <dl>
                <dt>Subject</dt>
                <dd>
                    <input type="text" id="commuTitle" placeholder="Please enter a subject.">
                </dd>
                <dt class="main_cont">Question Description</dt>
                <dd class="main_cont">
                    <textarea id="commuContents"></textarea>
                </dd>
            </dl>
            <div class="call_send btn_area">
                <p class="btn btn_bk">Register</p>
            </div>
        </div>
    </section>
    <jsp:include page="../common/footerEN.jsp" />

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

            // 이메일 정규표현식 유효성 체크        		
            var email_regex = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

            if (chkflag == false) {
                alert("Please agree to the collection of personal information");
                $('#agree').focus();
            } else if (name == "") {
                alert("Please fill in your name");
                $('#commuName').focus();
                return false;
            } else if (tempPhone == "") {
                alert("Please fill in your Phone Number");
                $('#Num').focus();
                return false;
            } else if (tempEmail == "") {
                alert("Please fill in your Email");
                $('#mail').focus();
                return false;
            } else if (title == "Please fill in the Question Description") {
                alert("");
                $('#commuTitle').focus();
                return false;
            } else if (contents == "") {
                alert("Please fill in the Subject");
                $('#commuContents').focus();
                return false;
            } else if (!email_regex.test(tempEmail)) {
                alert("Email format is not valid. Please re-enter according to format.");
                $('#mail').focus();
                return false;
            } else {
                $.ajax({
                    url: "<%=request.getContextPath()%>/community/sendEmail.html",
                    cache: false,
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
    function response_jsonlst() {
        alert("Your inquiry has been forwarded to the administrator.");

        $('#commuName').val("");
        $('#Num').val("");
        $('#mail').val("")
        $('#commuTitle').val("");
        $('#commuContents').val("");

        tempPhone = $('#Num').val();
        tempEmail = $('#mail').val();
    }

    //숫자만 입력 가능하게
    $(".num").keydown(function(e) {
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
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
</script>

</html>