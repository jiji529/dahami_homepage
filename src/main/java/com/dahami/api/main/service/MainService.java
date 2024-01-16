package com.dahami.api.main.service;

import java.util.List;
import java.util.Map;

import com.dahami.api.main.service.vo.BoardVO;
import com.dahami.api.main.service.vo.InstaTokenVO;
import com.dahami.api.main.service.vo.LogoVO;

public interface MainService {
	
	List<BoardVO> SelectNotLst(BoardVO boardVO) throws Exception;
	List<BoardVO> FaqLst(BoardVO boardVO) throws Exception;
	
	int SelectNotCnt(BoardVO boardVO) throws Exception;
	int FaqCnt(BoardVO boardVO) throws Exception;
	
	Map<String, String> SelectKindList() throws Exception;
	List<LogoVO> SelectLogoLst() throws Exception;
	List<InstaTokenVO> getInstaTokenData();
	void insertNewToken(InstaTokenVO itVO);
	List<BoardVO> FaqLstEN(BoardVO boardVO);
	int FaqCntEN(BoardVO boardVO);	
}