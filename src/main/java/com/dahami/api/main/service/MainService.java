package com.dahami.api.main.service;

import java.util.List;
import java.util.Map;

import com.dahami.api.main.service.vo.BoardVO;

public interface MainService {
	
	List<BoardVO> SelectNotLst(BoardVO boardVO) throws Exception;
	int SelectNotCnt(BoardVO boardVO) throws Exception;
}