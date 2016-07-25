package com.dahami.api.main.service.vo;

import java.io.Serializable;
import java.util.List;


public class ArticleVO implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 아이디 */
	private String id;
	private String article;
	private String article_serial;
	private String article_paper;
	private String article_title;
	private String article_category;
	private String content;
	private String cor_content;
	private String article_date;
	private String coordinate;
	private String reporter;
	private String page_name;
	private String art_img;
	private String regi_date;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getArticle() {
		return article;
	}
	public void setArticle(String article) {
		this.article = article;
	}
	public String getArticle_serial() {
		return article_serial;
	}
	public void setArticle_serial(String article_serial) {
		this.article_serial = article_serial;
	}
	public String getArticle_paper() {
		return article_paper;
	}
	public void setArticle_paper(String article_paper) {
		this.article_paper = article_paper;
	}
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	public String getArticle_category() {
		return article_category;
	}
	public void setArticle_category(String article_category) {
		this.article_category = article_category;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCor_content() {
		return cor_content;
	}
	public void setCor_content(String cor_content) {
		this.cor_content = cor_content;
	}
	public String getArticle_date() {
		return article_date;
	}
	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}
	public String getCoordinate() {
		return coordinate;
	}
	public void setCoordinate(String coordinate) {
		this.coordinate = coordinate;
	}
	public String getReporter() {
		return reporter;
	}
	public void setReporter(String reporter) {
		this.reporter = reporter;
	}
	public String getPage_name() {
		return page_name;
	}
	public void setPage_name(String page_name) {
		this.page_name = page_name;
	}
	public String getArt_img() {
		return art_img;
	}
	public void setArt_img(String art_img) {
		this.art_img = art_img;
	}
	public String getRegi_date() {
		return regi_date;
	}
	public void setRegi_date(String regi_date) {
		this.regi_date = regi_date;
	}
}
