package com.dahami.api.main.service.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.management.Query;

import org.springframework.stereotype.Repository;

import com.dahami.api.main.service.vo.BizVO;
import com.dahami.api.main.service.vo.BoardVO;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.engine.builder.xml.SqlMapParser;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("myDAO")
public class MyDAO extends EgovAbstractDAO {

	@Override
	@Resource(name = "FormeSqlMapClient")
	public void setSuperSqlMapClient(SqlMapClient sqlMapClient) {
		super.setSuperSqlMapClient(sqlMapClient);
	}
	
	public List<BoardVO> selectNoticeLst(BoardVO boardVO) {
		return (List<BoardVO>)list("NoticeLst", boardVO);
	}
	
	public int selectNoticeCnt(BoardVO boardVO) {
		return (Integer)selectByPk("NoticeCnt", boardVO);
	}
	
	public List<BoardVO> selectFaqLst(BoardVO boardVO) {
		return (List<BoardVO>)list("FaqLst", boardVO);
	}
	
	public int selectFaqCnt(BoardVO boardVO) {
		return (Integer)selectByPk("FaqCnt", boardVO);
	}
}
