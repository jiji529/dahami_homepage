var btnFst = '<img src="../image/btn/btn_pu_paginatefirst.gif" width="25" height="23" border="0" alt="처음" />';
var btnBef = '<img src="../image/btn/btn_pu_paginatebefore.gif" width="25" height="23" border="0" alt="이전" />';
var btnAft = '<img src="../image/btn/btn_pu_paginateafter.gif" width="25" height="23" border="0" alt="다음" />';
var btnLst = '<img src="../image/btn/btn_pu_paginatelast.gif" width="25" height="23" border="0" alt="끝" />';

var btnDsbFst = '<img src="../image/btn/btn_pu_paginatefirst_1.gif" width="25" height="23" border="0" alt="처음" style="cursor:default"/>';
var btnDsbBef = '<img src="../image/btn/btn_pu_paginatebefore_1.gif" width="25" height="23" border="0" alt="이전" style="cursor:default"/>';
var btnDsbAft = '<img src="../image/btn/btn_pu_paginateafter_1.gif" width="25" height="23" border="0" alt="다음" style="cursor:default"/>';
var btnDsbLst = '<img src="../image/btn/btn_pu_paginatelast_1.gif" width="25" height="23" border="0" alt="끝" style="cursor:default"/>';

function initPaginavi(totalCount, pageVol, pageNo) {
	$("#pagination").paging(totalCount, {
	
//		format: "[ < . (qq -) ncnn (- pp) > ]",
		format: "[ < (qq-) nncnn (-pp) > ]",
		perpage: pageVol,
		lapping: 0,
		page: pageNo,
		onSelect: function(page) {
			if($("#pageNo").val() != page) {
				goPg(page);
			}
		},
		onFormat: function(type) {
	
			switch (type) {
	
			case 'block':
				var classStr = "";
				if(this.value == 1) {
					classStr = " class=\"noline_left\"";
				}
				
				if (this.value != this.page)
					return '<a href="#"'+classStr+'>' + this.value + '</a>';
				return '<strong' + classStr + '>'+this.value+'</strong>';
	
			case 'next':
				if(!this.active) {
					return '<span class="next btn_noborder"><a href="#">'+btnDsbAft+'</a></span>';
				}
				return '<span class="next btn_noborder"><a href="#">'+btnAft+'</a></span>';
			case 'prev':
				if(!this.active) {
					return '<span class="next btn_noborder"><a href="#">'+btnDsbBef+'</a></span>';
				}
				return '<span class="prev btn_noborder"><a href="#">'+btnBef+'</a></span>';
			case 'first':
				if(!this.active) {
					return '<span class="next btn_noborder"><a href="#">'+btnDsbFst+'</a></span>';
				}
				return '<span class="frst btn_noborder"><a href="#">'+btnFst+'</a></span>';
			case 'last':
				if(!this.active) {
					return '<span class="last btn_noborder"><a href="#">'+btnDsbLst+'</a></span>';
				}
				return '<span class="last btn_noborder"><a href="#">'+btnLst+'</a></span>';
//			case "leap":
//				if (this.active)
//					return "&nbsp;";
	
//			case 'fill':
//				if (this.active)
//					return "...";
			}
			return "";
		}
	});
}
