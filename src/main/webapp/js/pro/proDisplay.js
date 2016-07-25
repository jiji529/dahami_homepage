var css ="" +
"<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/list.css\" />" +
"<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/common.css\" />" +
"<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/layout.css\" />" +
"<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/option.css\" />" +
"<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/tree.css\" />" +
"<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/layer.css\" />" +
"<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/paginate.css\" />" +
"<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/footer.css\" />"; 

$(function(){
	isProjectVOFromSession();
});

function isProjectVOFromSession(){
	var httpUrl = "../pro/validateProjectVOCheck.wips";
	$.ajax({
		url: httpUrl ,  
		cache : false,
		dataType : "text",
		asynce : false,
		success: function (text, textStatus) {
			if (text == 0) {
				pro_Display("open");				
			}
			else if(text == 2) {
				$('#devSearchMenu').removeClass('menu_search').removeClass('menu_search_on').addClass('menu_search_disable');
				$('#devRepairMenu').removeClass('menu_repair').removeClass('menu_repair_on').addClass('menu_repair_disable');
				$('#devAnalysisMenu').removeClass('menu_analysis').removeClass('menu_analysis_on').addClass('menu_analysis_disable');
				$('#devReportMenu').removeClass('menu_report').removeClass('menu_report_on').addClass('menu_report_disable');
				
				$('#devSearchMenu').find('a').attr('href', '#').attr("style", "cursor:default");
				$('#devRepairMenu').find('a').attr('href', '#').attr("style", "cursor:default");
				$('#devAnalysisMenu').find('a').attr('href', '#').attr("style", "cursor:default");
				$('#devReportMenu').find('a').attr('href', '#').attr("style", "cursor:default");
			}
		},
		error: function (xhr, textStatus, errorThrown) {    	
			alert(textStatus);
		}
	});
}
function clsProjectLayer(){
	$("#projectLayout").remove();
}

function pro_Display(flag) {
	var httpUrl = "../pro/openProject.wips";
	if(flag == "page" || flag == "open"){
		httpUrl = "../pro/openProject.wips";
	}
	if(flag == "del"){
		httpUrl = "../pro/delProject.wips";
	}
	if(flag == "new"){
		httpUrl = "../pro/newProject.wips";
	}
	if(flag == "com"){
		httpUrl = "../pro/comProject.wips";
	}
	$.ajax({
		type: "POST",
		url: httpUrl ,  
		cache : false,
		asynce : true,
		data: $("form[name=openProjectFormVO]").serialize(),
		success: function (html, textStatus) {
			$("#projectLayout").remove();
			$("<div id='projectLayout' class='layerdown open'>"+css+html+"</div>")
	 		.appendTo("body");
		},
		error: function (textStatus) {
			alert(textStatus);
		}
	});
}

function checkLength(objname, maxlength) {
	var objstr = objname.value; // 입력된 문자열을 담을 변수 
	var objstrlen = objstr.length; // 전체길이 
	
	// 변수초기화 
	var maxlen = maxlength; // 제한할 글자수 최대크기 
	var i = 0; // for문에 사용 
	var bytesize = 0; // 바이트크기 
	var strlen = 0; // 입력된 문자열의 크기
	var onechar = ""; // char단위로 추출시 필요한 변수 
	var objstr2 = ""; // 허용된 글자수까지만 포함한 최종문자열

	// 입력된 문자열의 총바이트수 구하기
	for (i = 0; i < objstrlen; i++) {
		// 한글자추출 
	 	onechar = objstr.charAt(i);
	
	 	if (escape(onechar).length > 4) {
	  		bytesize += 2; // 한글이면 2를 더한다. 
	 	} else {
	  		bytesize++; // 그밗의 경우는 1을 더한다.
	 	}
	
	 	if (bytesize <= maxlen) { // 전체 크기가 maxlen를 넘지않으면 
	  		strlen = i + 1; // 1씩 증가
	 	}
	}

	// 총바이트수가 허용된 문자열의 최대값을 초과하면 
	if (bytesize > maxlen) {
		alert(((objname.name.match("pjtNm"))?"프로젝트명":"프로젝트 설명")+"에서 허용된 문자열의 최대값("+maxlen+")을 초과했습니다. \n초과된 내용은 자동으로 삭제 됩니다.");  // match를 이용해서 영어로된 name을 한글로 변환해서 출력한다. 
		objstr2 = objstr.substr(0, strlen);
		objname.value = objstr2;
	}
	objname.focus();
}

