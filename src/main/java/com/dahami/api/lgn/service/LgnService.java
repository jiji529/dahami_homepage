package com.dahami.api.lgn.service;

import java.util.List;
import java.util.Map;

import com.dahami.api.lgn.service.vo.MemberVO;

public interface LgnService {

	public MemberVO lgnSelectmembrcdMembr(MemberVO memberVO) throws Exception;
	
	public List<MemberVO> listMemberList(Map<String, String> param);
}
