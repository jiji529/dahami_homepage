function addNewProjectCheck(session){
 var frm = document.newProjectFormVO;
 if(!validateNewProjectFormVO(frm)) {return;}
 else{
  var reg = /^(19|20)\d{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[0-1])$/;
  if(!reg.test(frm.pjtBgnDt.value)) {alert("프로젝트 시작일 형식이 잘못됐습니다(ex. 20130125)"); return;}
  if(!reg.test(frm.pjtEndDt.value)) {alert("프로젝트 종료일 형식이 잘못됐습니다(ex. 20130225)"); return;}
  if(frm.pjtBgnDt.value>frm.pjtEndDt.value) {alert("프로젝트 시작일이 종료일보다 크면 안됩니다"); return;}
  if(confirm(((session.length>0)?"기존 프로젝트의 작업은 저장되지 않을 수 있습니다":"신규 프로젝트를 생성합니다")+"\n계속하시겠습니까?")){
    frm.action = "../pro/addProject.wips";
    frm.submit();
  }
 }
}

function pro_select(pjtId) {
	var frm = document.openProjectFormVO;
	frm.pjtId.value = pjtId;
	frm.action = "../pro/selProject.wips";
	frm.submit();
}

function pro_delete(pageNo) {
	var frm = document.openProjectFormVO;
	var chkList = $("li.listtype > input[type=checkbox]:checked");
	//alert("chkList.length = " + chkList.length);
	if( chkList.length == 0 ){
		alert("삭제할 프로젝트를 체크해 주세요!");
		return false;
	}
	
	if(confirm("선택한 프로젝트를 삭제하시겠습니까?")) {
		frm.pageIndex.value = pageNo;
		pro_Display("del");
	}
}
function pro_page(pageNo) {
	var frm = document.openProjectFormVO;
	frm.pageIndex.value = pageNo;
	pro_Display("page");
}

//프로젝트 수정 버튼클릭
function pro_EditDisplay(pjtId) {
	$.ajax({
		type: "POST",
		url: "../pro/editProject.wips",		
		cache : false,
		asynce : true,
		data: {			
			pjtId: 	pjtId     // 프로젝트 아이디
		},
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

//프로젝트 수정 확인 클릭
function editProjectCheck(){
		$.ajax({
			type: "POST",
			url:"../pro/updateProject.wips",
			cache : false,
			asynce : true,
			data: $("form[name=projectVO]").serialize(),
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


//공동작업자 중복여부 체크
function valUsrCheck(){
	$("input[name=coopMembrId]").each(function() {
		var coopMembrId = $(this);
		$("input[name=membrChk]").each(function() {
			 var usrInfo = $(this);
			 var splitUsrInfo = usrInfo.val().split('+');
			 
			 //같은 아이디일 경우 안보이게 
			 if(coopMembrId.val() == splitUsrInfo[0]){
				 //ul 부터 안보이게
				 usrInfo.parent().parent().parent().addClass("display_n");
			 }
		 });
	});
}

//콤마 제거
function removeComma(totalCount){
	return parseInt(raplaceAll(totalCount,"," ,""));
}

//콤마 제거를 위한 replaceAll 
function raplaceAll(str,orgStr,repStr){
	return str.split(orgStr).join(repStr);
}

////프로젝트 수정 버튼클릭
//function pro_EditDisplay(pjtId) {
//	$.ajax({
//		type: "POST",
//		url: "../pro/editProject.wips",		
//		cache : false,
//		asynce : true,
//		data: {			
//			pjtId: 	pjtId     // 프로젝트 아이디
//		},
//		success: function (html, textStatus) {
//			$("#projectLayout").remove();
//			$("<div id='projectLayout' class='layerdown open'>"+css+html+"</div>")
//	 		.appendTo("body");
//		},
//		error: function (textStatus) {
//			alert(textStatus);
//		}
//	
//}

var fnPreserveTechTree = function() {
	
	$(window).unload(function() {
		
		var openIdList = $.makeArray(
			$(".tree").find('.open').map(function() {
				return $(this).attr('id');
			})	
		).join(",");
		
		var checkIdList = $.makeArray(
			$('.devTreItemCheck:checked').map(function() {
				return $(this).attr('fldrId');
			})	
		).join(",");
		
	});
	//공동사용자로 지정되어 있는경우 체크
	valUsrCheck();
};

var fnSetTechTreeStructure = function() {
	$('#nav_sub').children().remove();
	$('<div id="nav_fix_toparea">').appendTo($('#nav_sub'));
	$('<div id="nav_fix_conarea">').appendTo($('#nav_sub'));
	$('<div class="treeblock" id="devTechTreeBlock" style="max-height:395px;overflow-y:auto;">').appendTo($('#nav_fix_conarea'));
	$('<div class="treeblock top_line" id="devTempFolder">').appendTo($('#nav_fix_conarea'));
	$('<div class="treeblock top_line2" id="devEtcBlock">').appendTo($('#nav_fix_conarea'));
	$('#nav_fix_conarea').attr('style', 'top:82px');
};

//<p class="btn_setup2"> 클릭 
jQuery.fn.addSetupLayer = function() {
};

var fnResetTree = function() {
	
	var tree = $("#techTree");
	$("#techTree").jstree({
		"themes" : {
			"theme" : "classic",
			"dots" : true,
			"icons" : true 
		},
		"types" : {
//			"max_depth" : 4,				//최대 뎁스는 4뎁스
//			"max_children" : -1,			//자식 생성갯수는 무한=-1
			"valid_children" : [ "default" ],
			"types" : {
                "disabled" : {
                     "check_node" : false, 
                     "uncheck_node" : false 
                },
                "enabled" : {
                	"check_node" : true, 
                    "uncheck_node" : true
                }
			}
		},
		"ui" : {
			"select_limit" : 1
		},
		
		"checkbox" : {
			// "keep_selected_style" : true,
			 "two_state" : true	//루트 체크박스선택시 하위 체크박스  독립적으로 적용
		},
		
		"plugins" : [ "themes", "html_data", "crrm","ui", "types","checkbox"]
     });
	
	tree.bind("loaded.jstree", function (event, data) {
		rebuildPage();
		$("#techTree").jstree("open_all");			//open_all 폴더 모두 열기 속성
    });
};

// xml을 html로 만들다.
var fnMakeTreeHtml = function(xml) {
	var $devTechTreeBlock = $("#coopTreeBlock");	
	
	// 기술분류 root 를 만든다.
	var rootElement = '<ul><li id="0" class="block open" class="jstree-unchecked jstree-open"><p class="file_classification"><a href="#";>기술분류</a></p><p class="btn_setup2"><span class="display_n">설정</span></p><p class="clear"></p></li></ul>';	
	$devTechTreeBlock.append(rootElement);	
	var cntTreeNode = $(xml).find("techTreeNode").size();
	
	if (cntTreeNode > 0) {
		$devTechTreeBlock.find(">ul >li").append('<div class="techTreeClass" id="techTree"></div>');		
		var $treeRegion = $('.techTreeClass');
		
		$(xml).find("techTreeNode").each(function(i) {
			var fldrId = $(this).find("fldrId").text();
			var hghrFldrId = $(this).find("hghrFldrId").text();
			var fldrNm = $(this).find("fldrNm").text();
			var fldrKind = $(this).find("fldrKind").text();
			var lvl = $(this).find("lvl").text();
			var cntPatList = $(this).find("cntPatList").text();
			var cntLabel = " (" + cntPatList +")";
			
			// 해당 노드의 첫번째 엘리먼트.
			//더블클릭 이벤트 
			//var firstNodeElement = '<ul><li id="'+ fldrId +'" value="'+ lvl +'" ><a  ondblclick="javascript:fnDbClickView('+fldrId+');" href="#";>'+fldrNm+ cntLabel + '</a></li></ul>';
			var firstNodeElement = '<ul><li id="'+ fldrId +'" value="'+cntPatList+'" style=background-color:#ffffff ><a  href="#">'+fldrNm+ cntLabel + '</li></ul>';
			// 존재하는 노드에 추가되는.
			//더블클릭 이벤트
			//var addedNodeElement = '<li id="'+ fldrId +'" value="'+ lvl +'" ><a ondblclick="javascript:fnDbClickView('+fldrId+');" href="#";>'+fldrNm+ cntLabel + '</a></li>';
			var addedNodeElement = '<li id="'+ fldrId +'" value="'+cntPatList+'" style=background-color:#ffffff><a href="#">'+fldrNm+ cntLabel + '</a></li>';
			
			if (fldrKind == 'F') {				
				if (lvl*1 < 2) {	// Node의 마지막 Element
					if ( $treeRegion.find('>ul').length > 0) {
						$treeRegion.find('>ul').append(addedNodeElement);
					}
					else {	// Node의 첫번째 Element
						$treeRegion.append(firstNodeElement);
					}					
				}
				else {
					if ( $("#" + hghrFldrId + " >ul").length > 0) {
						$("#" + hghrFldrId + " >ul").append(addedNodeElement);
					}
					else {
						$("#" + hghrFldrId).append(firstNodeElement);
					}
				}
			
			}
			else if (fldrKind == 'T') {	// 임시폴더
				$('#tempPatentCount').attr('value', fldrId);
//				$('.project_title').attr('tempId', fldrId);
			}
			else if (fldrKind == 'R') { // 휴지통
//				$('#devTrash').attr('fldrId', fldrId);
				$('.project_title').attr('trashId', fldrId);
			}
		});		
	}
	
	try{
		fnResetTree();
	}catch(e){}
};


//트리 다시 그리기
var fnTechTreeXmlToHtml = function() {
	$('#coopTreeBlock').children().remove();
	$("#moveTmpBlock").children().remove();
	
	$.ajax({
		url : "../tre/displayTreTechClsFldrXml.wips",
		cache : false,
		dataType :"xml",		
		asynce : false,		
		success : function(xml) {
			fnMakeTreeHtml(xml);
		}
	});
};

// js/tre/techTreeSetupLayer.js 에 해당 이벤트에 대한 설정 있음
var fnAddTechTreeLayer = function() {
	
	var folderLayerDivArray = new Array();
	folderLayerDivArray.push('<div class="folder_layer">');
	folderLayerDivArray.push('<ul>');
	folderLayerDivArray.push('<li class="under" id="new_folder"><a href="#">분류생성</a></li>');
	folderLayerDivArray.push('<li class="under" id="rename_folder"><a href="#">이름변경</a></li>');
	folderLayerDivArray.push('<li id="delete_folder"><a href="#">삭제</a></li>');	
	folderLayerDivArray.push('</ul>');
	folderLayerDivArray.push('</div>');
	
	var folderLayerDiv = folderLayerDivArray.join('\n');	
	$('body').append(folderLayerDiv);	
	$('.folder_layer').hide();
	
};

//숫자 콤마로 자리수 구분
var fnAddCommas = function(nStr) {
	nStr += '';
	var x = nStr.split('.');
	var x1 = x[0];
	var x2 = x.length > 1 ? '.' + x[1] : '';
	var regx = /(\d+)(\d{3})/;
	while (regx.test(x1)) {
		x1 = x1.replace(regx, '$1' + ',' + '$2');
	}
	return x1 + x2;
};

jQuery.initialTechTree = function() {
	
	$.ajax({
		url : "../tre/selectTreeEtcCount.wips",
		cache : false,
		dataType :"xml",	
		asynce : false,
		success : function(xml) {
			
			var totalPatentCount = 0;
			var tempPatentCount = 0;
			var trashPatentCount = 0;
			$(xml).find("treeEtcCount").each(function(i){
				totalPatentCount = $(this).find("totalPatentCount").text();
				tempPatentCount = $(this).find("tempPatentCount").text();
				trashPatentCount = $(this).find("trashPatentCount").text();
			});
			
			totalPatentCount = Number(totalPatentCount) -Number(trashPatentCount);	//모든 특허건수에서 휴지통에 들어 있는 특허건수 빼기
			$('#totalPatentCount').text(fnAddCommas(totalPatentCount));						//임시폴더 포함한 특허건수 좌측 트리 상단에 위치;
			$('#coopTotalCount').text(fnAddCommas(totalPatentCount));						//임시폴더 포함한 특허건수 우측 분류 건수에 위치
			$('#coopTotalCount').val(fnAddCommas(totalPatentCount));
			$('#coopSum').text(fnAddCommas(totalPatentCount));								//임시폴더 포함한 특허건수 우측 남은건수에 위치
			$('#coopSum').val(fnAddCommas(totalPatentCount));
			$('#tempPatentCount').text(fnAddCommas(tempPatentCount));					//임시폴더 건수
		}
	});	
	
	fnPreserveTechTree();
	fnSetTechTreeStructure();
	fnTechTreeXmlToHtml();
	fnAddTechTreeLayer();
};

(function($) {
//	$.initialTechTree();
	
//	$(document).ajaxStart(function(){
//		$(".search_loading_layer").show();
//	}).ajaxStop(function(){
//		$(".search_loading_layer").hide();
//	});
})(jQuery);