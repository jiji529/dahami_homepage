<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp" %>
	<form action="<c:url value='/j_spring_security_check' />" method="post" name="loginForm">
    <div class="login_container">
    <div class="login_content">
        <div class="input_box">
			<fieldset class="loginform">
				<input type="text" id="j_username" name="j_username" class="input_login" />
				<input id="j_password" name="j_password" size="" value="" maxlength="50" type="password" class="input_login" />
				<div class="login_check">
					<label for=""><span class="texttype">로그인유지</span></label>
					<input id="_spring_security_remember_me" name="_spring_security_remember_me" type="checkbox" value="true" align="left" />
				</div>
				<div class="btn_login">
					<button>로그인</button>
				</div>
				<p class="error_text_block">
					<c:if test="${not empty error}">		
						<span class="error_text">ID/PASSWORD를 확인하세요.</span>
					</c:if>
				</p>
			</fieldset>
        </div>
    </div>
    </div>
	</form>
    <div class="footer login_foot">
        <p class="footmenu"> <a onclick="go_url('#');">PC버전</a> <span>·</span> <a onclick="go_url('index.php?type=inform&amp;code=terms&amp;mode=view');">이용약관</a> <span>·</span> <a onclick="go_url('index.php?type=inform&amp;code=privacy&amp;mode=view');">개인정보 취급방침</a> </p>
        <p class="foot2">Copyright 2013 (C) Korea Press Foundation. ALL RIGHTS RESEVED.</p>
    </div>
</div>
</body>
</html>
