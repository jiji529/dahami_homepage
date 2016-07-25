/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.rte.cmmn.web;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

/**  
 * @Class Name : ImagePaginationRenderer.java
 * @Description : ImagePaginationRenderer Class
 * @Modification Information  
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 * 
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 * 
 *  Copyright (C) by MOPAS All right reserved.
 */
public class EgovImgPaginationRenderer extends AbstractPaginationRenderer {
	
    /**
    * PaginationRenderer
	* 
    * @see 개발프레임웍크 실행환경 개발팀
    */
	//"<a href=\"#\" onclick=\"{0}({1}); return false;\">" +"<image src='" + strWebDir + "btn_page_pre1.gif' border=0/></a>&#160;";
	//"<a href=\"#\" onclick=\"{0}({1}); return false;\">" +	"<image src='btn_page_next10.gif' border=0/></a>&#160;";
	
	public EgovImgPaginationRenderer() {

		//String strWebDir = "/egovframework.guideprogram.basic/images/egovframework/cmmn/"; // localhost
		String strWebDir = "/###ARTIFACT_ID###/images/egovframework/cmmn/";

		firstPageLabel = ""; 
        previousPageLabel = "<a href=\"#\" class=\"btn_page btn_prev\" onclick=\"{0}({1}); return false;\"><span class=\"ico_prev\">이전 목록이 없습니다.</span></a>";
        currentPageLabel = "<span class=\"screen_out\">현재페이지</span><span class=\"num_page\"><em class=\"link_page\">{0}</em></span>";
        otherPageLabel = "<span class=\"num_page\"><a href=\"#\" class=\"link_page\" onclick=\"{0}({1}); return false;\">{2}</a></span>";
        nextPageLabel =  "<a href=\"#\" class=\"btn_page btn_next\" onclick=\"{0}({1}); return false;\"><span class=\"ico_next\">이전 목록이 없습니다.</span></a>";
        lastPageLabel = "";
	}
}
