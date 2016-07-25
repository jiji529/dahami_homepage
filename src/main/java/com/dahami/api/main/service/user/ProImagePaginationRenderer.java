package com.dahami.api.main.service.user;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;


public class ProImagePaginationRenderer extends AbstractPaginationRenderer {
	
	public ProImagePaginationRenderer() {
		firstPageLabel    = "<a href=\"#\" class=\"btn_noborder\" onclick=\"{0}({1}); return false;\"><image src='/atc/image/btn/btn_pu_paginatefirst.gif' width=\"25\" height=\"23\" border=0/></a>&#160;"; 
		previousPageLabel = "<a href=\"#\" class=\"btn_noborder\" onclick=\"{0}({1}); return false;\"><image src='/atc/image/btn/btn_pu_paginatebefore.gif' width=\"25\" height=\"23\" border=0/></a>";
		currentPageLabel  = "<strong>{0}</strong>&#160;";
		otherPageLabel    = "<a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a>&#160;";
		nextPageLabel     = "<a href=\"#\" class=\"btn_noborder\" onclick=\"{0}({1}); return false;\"><image src='/atc/image/btn/btn_pu_paginateafter.gif' width=\"25\" height=\"23\" border=0/></a>&#160;";
		lastPageLabel     = "<a href=\"#\" class=\"btn_noborder\" onclick=\"{0}({1}); return false;\"><image src='/atc/image/btn/btn_pu_paginatelast.gif' width=\"25\" height=\"23\" border=0/></a>&#160;";
	}
}
