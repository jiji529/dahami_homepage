package com.dahami.api.lgn.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dahami.api.lgn.service.LgnService;
import com.dahami.api.lgn.service.dao.LgnATCDAO;
import com.dahami.api.lgn.service.vo.MemberVO;

import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

@Service("lgnService")
public class LgnServiceImpl extends AbstractServiceImpl implements LgnService {

	@Resource(name="lgnATCDAO")
	private LgnATCDAO lgnATCDAO;
	
	
	@Override
	public MemberVO lgnSelectmembrcdMembr(MemberVO memberVO) throws Exception {
		return lgnATCDAO.lgnSelectmembrcdMembr(memberVO);
	}


	@Override
	public List<MemberVO> listMemberList(Map<String, String> param) {
		return lgnATCDAO.listUserList(param);
	}

}
