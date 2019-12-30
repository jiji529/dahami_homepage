<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<style>
*{margin:0; padding;float:left;}
input{margin:5px;}
div{float:left; width:100%; height:22px; background:#3A3E50; padding:5px 0; }
label{ font-size:14px; line-height:18px; cursor:pointer; color:#fff;}
</style>
<script type="text/javascript">
	function setCookie(name, value, expiredays) {
	var today = new Date();
	    today.setDate(today.getDate() + expiredays);
	
	    document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
	}
	
	function closePop() {        
		if(document.forms[0].todayPop.checked)                
		setCookie('popup', 'start', 1);
		self.close();
	}
</script>
</head>
<body>
	<form>
		<img src="../images/popup_20191230.jpg" />
		<div>
			<label for="todayPop">
				<input type="checkbox" name="todayPop" onClick="closePop()">오늘 하루 그만보기
			</label>
		</div>
	</form>

</body>
</html>