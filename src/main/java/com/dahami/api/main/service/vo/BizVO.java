package com.dahami.api.main.service.vo;

import java.io.Serializable;
import java.util.List;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


public class BizVO extends PaginationInfo implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 아이디 */
	private String biz_num;								// 사업번호
	private String biz_division_seq;					// 기존 사업목록 고유번호
	private String biz_forme_seq;						// 사업양식 고유번호
	private String biz_mode;							// 승인(0) / 선착순(1)
	private String biz_lec_mode;						// 강사배정방식(0:승인, 1:선착순, 2:없음)
	private String biz_name;							//	사업명
	private String biz_noti_date;						// 공지시작일자
	private String biz_close_date;						// 공지마감일자
	private String biz_state;							// 0 (폐쇄) / 1 (개설) / 2(완료)
	private String biz_max_count;						// 선착순 최대 인원수
	private String biz_max_loc;							// 최대 기관수
	private String biz_memo;							// 사업 설명
	private String biz_finish_date;						// 완료일시
	private String biz_reg_date;						// 개설일자
	private String biz_req_num;							// 사업신청서번호
	private String biz_official_seal;					// 대표자 직인
	private String biz_edu_subject;						// 교육 주제
	private String biz_edu_address;						// 교육 장소
	private String biz_edu_target;						// 교육 대상
	private String biz_edu_persons;						// 교육 인원
	private String biz_edu_form;						// 교육 형태
	private String biz_edu_period;						// 교육 기간
	private String biz_time;							// 강의 시간
	private String biz_book;							// 교재명
	private String biz_book_num;						// 희망부수
	private String biz_conjugation;						// 활용방안
	private String biz_delivety;						// 교재 배송 주소
	private String biz_attach;							// 세부계획서 첨부
	private String biz_authority;						// 승인여부 0:미승인, 1:승인, 2:삭제
	private String biz_member_num;						// 회원번호(사업담당자)
	private String tmp_save;							// 0:임시저장상태, 1:완료
	private String biz_year;							// 연도(자유학기제, 학부모 연수)
	private String biz_term;							// 운영학기
	private String biz_nice;							// 학교 나이스 코드
	
	
	private String timetable_num;						// 회차 시퀀스
	private String time_date;							// 시간
	private String biz_inning;							// 회차
	private String biz_week;							// 요일
	private String biz_time_st;							// 강의 시작 시간
	private String biz_time_ed;							// 강의 종료 시간
	private String biz_lec_member_num;					// 강사번호
	private String biz_lec_member_name;					// 강사명
	private String biz_lec_change_req_state;			
	
	
	private String biz_confirm_num;						// 강의확인서 번호
	private String biz_total_time;
	
	private String biz_join_cnt;						// 참여인원
	private String biz_content;							// 수업내용
	private String biz_area;							// 지역
	private String subm_area;							// 제출 지역
	private String biz_sign;							// 승인 여부
	private String biz_OrgNm;
	private String biz_ChNm;
	private String biz_Path;
	
	private int number;
	private int stPageSize;
	private int endPageSize;
	
	
	
	public String getBiz_OrgNm() {
		return biz_OrgNm;
	}
	public void setBiz_OrgNm(String biz_OrgNm) {
		this.biz_OrgNm = biz_OrgNm;
	}
	public String getBiz_ChNm() {
		return biz_ChNm;
	}
	public void setBiz_ChNm(String biz_ChNm) {
		this.biz_ChNm = biz_ChNm;
	}
	public String getBiz_Path() {
		return biz_Path;
	}
	public void setBiz_Path(String biz_Path) {
		this.biz_Path = biz_Path;
	}
	public String getBiz_sign() {
		return biz_sign;
	}
	public void setBiz_sign(String biz_sign) {
		this.biz_sign = biz_sign;
	}
	public String getSubm_area() {
		return subm_area;
	}
	public void setSubm_area(String subm_area) {
		this.subm_area = subm_area;
	}
	public String getBiz_area() {
		return biz_area;
	}
	public void setBiz_area(String biz_area) {
		this.biz_area = biz_area;
	}
	public String getBiz_total_time() {
		return biz_total_time;
	}
	public void setBiz_total_time(String biz_total_time) {
		this.biz_total_time = biz_total_time;
	}
	public String getBiz_confirm_num() {
		return biz_confirm_num;
	}
	public void setBiz_confirm_num(String biz_confirm_num) {
		this.biz_confirm_num = biz_confirm_num;
	}
	public String getBiz_lec_change_req_state() {
		return biz_lec_change_req_state;
	}
	public void setBiz_lec_change_req_state(String biz_lec_change_req_state) {
		this.biz_lec_change_req_state = biz_lec_change_req_state;
	}
	public String getBiz_lec_member_name() {
		return biz_lec_member_name;
	}
	public void setBiz_lec_member_name(String biz_lec_member_name) {
		this.biz_lec_member_name = biz_lec_member_name;
	}
	public String getTime_date() {
		return time_date;
	}
	public void setTime_date(String time_date) {
		this.time_date = time_date;
	}
	public String getTimetable_num() {
		return timetable_num;
	}
	public void setTimetable_num(String timetable_num) {
		this.timetable_num = timetable_num;
	}
	public String getBiz_inning() {
		return biz_inning;
	}
	public void setBiz_inning(String biz_inning) {
		this.biz_inning = biz_inning;
	}
	public String getBiz_week() {
		return biz_week;
	}
	public void setBiz_week(String biz_week) {
		this.biz_week = biz_week;
	}
	public String getBiz_time_st() {
		return biz_time_st;
	}
	public void setBiz_time_st(String biz_time_st) {
		this.biz_time_st = biz_time_st;
	}
	public String getBiz_time_ed() {
		return biz_time_ed;
	}
	public void setBiz_time_ed(String biz_time_ed) {
		this.biz_time_ed = biz_time_ed;
	}
	public String getBiz_lec_member_num() {
		return biz_lec_member_num;
	}
	public void setBiz_lec_member_num(String biz_lec_member_num) {
		this.biz_lec_member_num = biz_lec_member_num;
	}
	public String getBiz_join_cnt() {
		return biz_join_cnt;
	}
	public void setBiz_join_cnt(String biz_join_cnt) {
		this.biz_join_cnt = biz_join_cnt;
	}
	public String getBiz_content() {
		return biz_content;
	}
	public void setBiz_content(String biz_content) {
		this.biz_content = biz_content;
	}
	public String getBiz_nice() {
		return biz_nice;
	}
	public void setBiz_nice(String biz_nice) {
		this.biz_nice = biz_nice;
	}
	public String getBiz_close_date() {
		return biz_close_date;
	}
	public void setBiz_close_date(String biz_close_date) {
		this.biz_close_date = biz_close_date;
	}
	public String getTmp_save() {
		return tmp_save;
	}
	public void setTmp_save(String tmp_save) {
		this.tmp_save = tmp_save;
	}
	public String getBiz_term() {
		return biz_term;
	}
	public void setBiz_term(String biz_term) {
		this.biz_term = biz_term;
	}
	public String getBiz_num() {
		return biz_num;
	}
	public void setBiz_num(String biz_num) {
		this.biz_num = biz_num;
	}
	public String getBiz_division_seq() {
		return biz_division_seq;
	}
	public void setBiz_division_seq(String biz_division_seq) {
		this.biz_division_seq = biz_division_seq;
	}
	public String getBiz_forme_seq() {
		return biz_forme_seq;
	}
	public void setBiz_forme_seq(String biz_forme_seq) {
		this.biz_forme_seq = biz_forme_seq;
	}
	public String getBiz_mode() {
		return biz_mode;
	}
	public void setBiz_mode(String biz_mode) {
		this.biz_mode = biz_mode;
	}
	public String getBiz_lec_mode() {
		return biz_lec_mode;
	}
	public void setBiz_lec_mode(String biz_lec_mode) {
		this.biz_lec_mode = biz_lec_mode;
	}
	public String getBiz_name() {
		return biz_name;
	}
	public void setBiz_name(String biz_name) {
		this.biz_name = biz_name;
	}
	public String getBiz_noti_date() {
		return biz_noti_date;
	}
	public void setBiz_noti_date(String biz_noti_date) {
		this.biz_noti_date = biz_noti_date;
	}
	public String getBiz_state() {
		return biz_state;
	}
	public void setBiz_state(String biz_state) {
		this.biz_state = biz_state;
	}
	public String getBiz_max_count() {
		return biz_max_count;
	}
	public void setBiz_max_count(String biz_max_count) {
		this.biz_max_count = biz_max_count;
	}
	public String getBiz_max_loc() {
		return biz_max_loc;
	}
	public void setBiz_max_loc(String biz_max_loc) {
		this.biz_max_loc = biz_max_loc;
	}
	public String getBiz_memo() {
		return biz_memo;
	}
	public void setBiz_memo(String biz_memo) {
		this.biz_memo = biz_memo;
	}
	public String getBiz_finish_date() {
		return biz_finish_date;
	}
	public void setBiz_finish_date(String biz_finish_date) {
		this.biz_finish_date = biz_finish_date;
	}
	public String getBiz_reg_date() {
		return biz_reg_date;
	}
	public void setBiz_reg_date(String biz_reg_date) {
		this.biz_reg_date = biz_reg_date;
	}
	public String getBiz_req_num() {
		return biz_req_num;
	}
	public void setBiz_req_num(String biz_req_num) {
		this.biz_req_num = biz_req_num;
	}
	public String getBiz_official_seal() {
		return biz_official_seal;
	}
	public void setBiz_official_seal(String biz_official_seal) {
		this.biz_official_seal = biz_official_seal;
	}
	public String getBiz_edu_subject() {
		return biz_edu_subject;
	}
	public void setBiz_edu_subject(String biz_edu_subject) {
		this.biz_edu_subject = biz_edu_subject;
	}
	public String getBiz_edu_address() {
		return biz_edu_address;
	}
	public void setBiz_edu_address(String biz_edu_address) {
		this.biz_edu_address = biz_edu_address;
	}
	public String getBiz_edu_target() {
		return biz_edu_target;
	}
	public void setBiz_edu_target(String biz_edu_target) {
		this.biz_edu_target = biz_edu_target;
	}
	public String getBiz_edu_persons() {
		return biz_edu_persons;
	}
	public void setBiz_edu_persons(String biz_edu_persons) {
		this.biz_edu_persons = biz_edu_persons;
	}
	public String getBiz_edu_form() {
		return biz_edu_form;
	}
	public void setBiz_edu_form(String biz_edu_form) {
		this.biz_edu_form = biz_edu_form;
	}
	public String getBiz_edu_period() {
		return biz_edu_period;
	}
	public void setBiz_edu_period(String biz_edu_period) {
		this.biz_edu_period = biz_edu_period;
	}
	public String getBiz_time() {
		return biz_time;
	}
	public void setBiz_time(String biz_time) {
		this.biz_time = biz_time;
	}
	public String getBiz_book() {
		return biz_book;
	}
	public void setBiz_book(String biz_book) {
		this.biz_book = biz_book;
	}
	public String getBiz_book_num() {
		return biz_book_num;
	}
	public void setBiz_book_num(String biz_book_num) {
		this.biz_book_num = biz_book_num;
	}
	public String getBiz_conjugation() {
		return biz_conjugation;
	}
	public void setBiz_conjugation(String biz_conjugation) {
		this.biz_conjugation = biz_conjugation;
	}
	public String getBiz_delivety() {
		return biz_delivety;
	}
	public void setBiz_delivety(String biz_delivety) {
		this.biz_delivety = biz_delivety;
	}
	public String getBiz_attach() {
		return biz_attach;
	}
	public void setBiz_attach(String biz_attach) {
		this.biz_attach = biz_attach;
	}
	public String getBiz_authority() {
		return biz_authority;
	}
	public void setBiz_authority(String biz_authority) {
		this.biz_authority = biz_authority;
	}
	public String getBiz_member_num() {
		return biz_member_num;
	}
	public void setBiz_member_num(String biz_member_num) {
		this.biz_member_num = biz_member_num;
	}
	public String getBiz_year() {
		return biz_year;
	}
	public void setBiz_year(String biz_year) {
		this.biz_year = biz_year;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getStPageSize() {
		return stPageSize;
	}
	public void setStPageSize(int stPageSize) {
		this.stPageSize = stPageSize;
	}
	public int getEndPageSize() {
		return endPageSize;
	}
	public void setEndPageSize(int endPageSize) {
		this.endPageSize = endPageSize;
	}
	
}
