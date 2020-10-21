package com.dahami.api.main.service.vo;

import java.io.Serializable;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


public class BoardVO extends PaginationInfo implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 아이디 */
	private String Uid;
	private String Gid;
	private String Hit;
	private String Title;
	private String Body;
	private String State;
	private String File1;
	private String File2;
	private String Regdate;
	
	private String seq;
	private String gubun;
	private String quest;
	private String answer;
	private String question;
	
	private int StPageSize = 0;
	private int EndPageSize = 0;
	
	
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	public String getQuest() {
		return quest;
	}
	public void setQuest(String quest) {
		this.quest = quest;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getStPageSize() {
		return StPageSize;
	}
	public void setStPageSize(int stPageSize) {
		StPageSize = stPageSize;
	}
	public int getEndPageSize() {
		return EndPageSize;
	}
	public void setEndPageSize(int endPageSize) {
		EndPageSize = endPageSize;
	}
	public String getUid() {
		return Uid;
	}
	public void setUid(String uid) {
		Uid = uid;
	}
	public String getGid() {
		return Gid;
	}
	public void setGid(String gid) {
		Gid = gid;
	}
	public String getHit() {
		return Hit;
	}
	public void setHit(String hit) {
		Hit = hit;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getBody() {
		return Body;
	}
	public void setBody(String body) {
		Body = body;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getFile1() {
		return File1;
	}
	public void setFile1(String file1) {
		File1 = file1;
	}
	public String getFile2() {
		return File2;
	}
	public void setFile2(String file2) {
		File2 = file2;
	}
	public String getRegdate() {
		return Regdate;
	}
	public void setRegdate(String regdate) {
		Regdate = regdate;
	}
}
