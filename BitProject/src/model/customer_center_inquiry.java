package model;

import java.sql.Date;

public class customer_center_inquiry {    // 고객센터
	
	private int cc_index;        // index
	private int m_index;         // 회원 index
	private String cc_sort;      // 분류
	private String cc_subject;   // 제목
	private String cc_content;   // 내용
	private String cc_email;     // 이메일
	private Date cc_date;      	 // 등록일	
	
	
	public int getCc_index() {
		return cc_index;
	}
	public void setCc_index(int cc_index) {
		this.cc_index = cc_index;
	}
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
	}
	public String getCc_sort() {
		return cc_sort;
	}
	public void setCc_sort(String cc_sort) {
		this.cc_sort = cc_sort;
	}
	public String getCc_subject() {
		return cc_subject;
	}
	public void setCc_subject(String cc_subject) {
		this.cc_subject = cc_subject;
	}
	public String getCc_content() {
		return cc_content;
	}
	public void setCc_content(String cc_content) {
		this.cc_content = cc_content;
	}
	public String getCc_email() {
		return cc_email;
	}
	public void setCc_email(String cc_email) {
		this.cc_email = cc_email;
	}
	public Date getCc_date() {
		return cc_date;
	}
	public void setCc_date(Date cc_date) {
		this.cc_date = cc_date;
	}
	
	
	
	@Override
	public String toString() {
		return "customerCenter [cc_index=" + cc_index + ", m_index=" + m_index + ", cc_sort=" + cc_sort
				+ ", cc_subject=" + cc_subject + ", cc_content=" + cc_content + ", cc_email=" + cc_email + ", cc_date="
				+ cc_date + "]";
	}
	
}
