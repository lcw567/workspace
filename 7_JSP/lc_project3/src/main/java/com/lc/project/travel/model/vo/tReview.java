package com.lc.project.travel.model.vo;

import java.sql.Date;

public class tReview {
	private String writer;
	private Date reviewDate;
	private String  content;
	public tReview(String writer, Date reviewDate, String content) {
		super();
		this.writer = writer;
		this.reviewDate = reviewDate;
		this.content = content;
	}
	public tReview() {
		super();
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "tReview [writer=" + writer + ", reviewDate=" + reviewDate + ", content=" + content + "]";
	}
	
}
