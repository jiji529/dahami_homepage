package com.dahami.api.lgn.service.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.dahami.api.lgn.service.vo.MemberVO;
import com.ibatis.sqlmap.client.SqlMapClient;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("lgnATCDAO")
public class LgnATCDAO extends EgovAbstractDAO {

	@Override
	@Resource(name = "FormeSqlMapClient")
	public void setSuperSqlMapClient(SqlMapClient sqlMapClient) {
		super.setSuperSqlMapClient(sqlMapClient);
	}
	
	// membrCd 가져오기	
	public MemberVO lgnSelectmembrcdMembr(MemberVO memberVO) {
		return (MemberVO) selectByPk("selectMemberInfo", memberVO);
	}
	
	@SuppressWarnings("unchecked")
	public List<MemberVO> listUserList(Map<String, String> param) {
		return this.list("selectMemberList", param);
	}
}
