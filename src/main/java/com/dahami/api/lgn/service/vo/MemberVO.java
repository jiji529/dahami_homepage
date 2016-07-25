package com.dahami.api.lgn.service.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


public class MemberVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int membrCd;
	private int usLevel;
	private String membrId;
	private String membrNm;
	private String membrPwd;
	
	private int assignPatCount;
	
	
	
	
	public int getUsLevel() {
		return usLevel;
	}
	public void setUsLevel(int usLevel) {
		this.usLevel = usLevel;
	}
	public int getMembrCd() {
		return membrCd;
	}
	public void setMembrCd(int membrCd) {
		this.membrCd = membrCd;
	}
	public String getMembrId() {
		return membrId;
	}
	public void setMembrId(String membrId) {
		this.membrId = membrId;
	}
	public String getMembrNm() {
		return membrNm;
	}
	public void setMembrNm(String membrNm) {
		this.membrNm = membrNm;
	}
	public String getMembrPwd() {
		return membrPwd;
	}
	public void setMembrPwd(String membrPwd) {
		this.membrPwd = membrPwd;
	}
	public int getAssignPatCount() {
		return assignPatCount;
	}
	public void setAssignPatCount(int assignPatCount) {
		this.assignPatCount = assignPatCount;
	}
}
