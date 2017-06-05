package com.dahami.api.main.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dahami.api.main.service.MainService;
import com.dahami.api.main.service.vo.BizVO;
import com.dahami.api.main.service.vo.BoardVO;
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
}
