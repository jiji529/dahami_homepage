package com.dahami.api.main.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dahami.api.main.service.MainService;
import com.dahami.api.main.service.vo.BizVO;
import com.dahami.api.main.service.vo.BoardVO;
import com.dahami.api.main.service.vo.InstaTokenVO;
import com.dahami.api.main.service.vo.LogoVO;
import com.dahami.api.main.service.dao.MyDAO;

import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

@Service("suvService")
public class MainServiceImpl extends AbstractServiceImpl implements MainService {


	@Resource(name="myDAO")
	private MyDAO myCDAO;
	
	@Override
	public List<BoardVO> SelectNotLst(BoardVO boardVO) throws Exception {
		List<BoardVO> noticeLst = this.myCDAO.selectNoticeLst(boardVO);
		
		return noticeLst;
	}
	
	@Override
	public List<BoardVO> FaqLst(BoardVO boardVO) throws Exception {
		List<BoardVO> noticeLst = this.myCDAO.selectFaqLst(boardVO);
		
		return noticeLst;
	}
	
	@Override
	public int SelectNotCnt(BoardVO boardVO) throws Exception {
		int boardCnt = this.myCDAO.selectNoticeCnt(boardVO);
		
		return boardCnt;
	}
	
	@Override
	public int FaqCnt(BoardVO boardVO) throws Exception {
		int boardCnt = this.myCDAO.selectFaqCnt(boardVO);
		
		return boardCnt;
	}
	
	@Override
	public Map<String, String> SelectKindList() throws Exception {
		Map<String, String> kindList = new LinkedHashMap<>();
		kindList.put("00_000", "중앙일간지"); kindList.put("01_000", "중앙경제지");
		kindList.put("50_000", "석간지"); kindList.put("02_000", "전문지");
		kindList.put("04_000", "스포츠지"); kindList.put("80_001", "종합일간지");
		kindList.put("03_001", "지방지(수도권)"); kindList.put("03_002", "지방지(충청)");
		kindList.put("03_003", "지방지(대구,경북)"); kindList.put("03_007", "지방지(부산,울산,경남)");
		kindList.put("03_005", "지방지(호남)"); kindList.put("03_006", "지방지(강원)");
		kindList.put("03_008", "지방지(제주)"); kindList.put("03_004", "지방지(전국)");
		kindList.put("80_000", "가판"); kindList.put("80_003", "어린이신문");
		kindList.put("90_001", "기타"); kindList.put("05_000", "잡지");
		kindList.put("70_000", "방송"); // SM3.paper_kind 70_000,70_001,70_002 합
		kindList.put("FF_001", "통신사"); // SM3.paper_kind 없음
		kindList.put("FF_002", "인터넷 신문"); // SM3.paper_kind 없음
		return kindList;
	}
	
	@Override
	public Map<String, String> SelectKindListEN() throws Exception {
		Map<String, String> kindList = new LinkedHashMap<>();
		kindList.put("00_000", "Central daily newspaper"); kindList.put("01_000", "Central economic newspaper");
		kindList.put("50_000", "Weekly newspaper"); kindList.put("02_000", "Specialty newspaper");
		kindList.put("04_000", "Sports newspaper"); kindList.put("80_001", "General daily newspaper");
		kindList.put("03_001", "Regional newspaper (metropolitan area)"); kindList.put("03_002", "Regional newspaper (Chungcheong)");
		kindList.put("03_003", "Regional newspaper (Daegu, Gyeongbuk)"); kindList.put("03_007", "Regional newspaper (Busan, Ulsan, Gyeongnam)");
		kindList.put("03_005", "Regional newspaper (Honam)"); kindList.put("03_006", "Regional newspaper (Gangwon)");
		kindList.put("03_008", "Regional newspaper (Jeju)"); kindList.put("03_004", "Regional newspaper (nationwide)");
		kindList.put("80_000", "Kiosk"); kindList.put("80_003", "Children's newspaper");
		kindList.put("90_001", "Other"); kindList.put("05_000", "Magazine");
		kindList.put("70_000", "Broadcast"); // SM3.paper_kind 70_000,70_001,70_002 합
		kindList.put("FF_001", "News agency"); // SM3.paper_kind 없음
		kindList.put("FF_002", "Internet newspaper"); // SM3.paper_kind 없음
		return kindList;
	}	
	
	@Override
	public List<LogoVO> SelectLogoLst() throws Exception {
		List<LogoVO> logoList = this.myCDAO.selectLogoLst();
		String t;
		for (LogoVO l : logoList) {
			t = "";
			if (l.getMediaTrusted().compareTo("Y") == 0) {
				t += "media_trusted ";
			}
			if (l.getMediaUntrusted().compareTo("Y") == 0) {
				t += "media_untrusted ";
			}
			if (l.getMediaOnline().compareTo("Y") == 0) {
				t += "media_online ";
			}
			l.setClassText(t.trim());
		}
		return logoList;
	}

	@Override
	public List<InstaTokenVO> getInstaTokenData() {
		List<InstaTokenVO> getInstaTokenData = this.myCDAO.selectInstaTokenData();
		
		return getInstaTokenData;
	}

	@Override
	public void insertNewToken(InstaTokenVO itVO) {
		this.myCDAO.insertNewToken(itVO);
	}

	@Override
	public List<BoardVO> FaqLstEN(BoardVO boardVO) {
		List<BoardVO> noticeLst = this.myCDAO.selectFaqLstEN(boardVO);
		
		return noticeLst;
	}

	@Override
	public int FaqCntEN(BoardVO boardVO) {
		int boardCnt = this.myCDAO.selectFaqCntEN(boardVO);
		
		return boardCnt;
	}
}
