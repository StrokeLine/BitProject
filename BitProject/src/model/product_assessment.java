package model;

import java.sql.Date;

public class product_assessment {
	private int pa_index;		// index
	private int m_index;		// 회원 index
	private int p_index;		// 상품 index
	private String pa_subject;  // 제목
	private String pa_content;	// 내용
	private float pa_grade;		// 평점
	private int pa_view;		// 확인 유무
	private Date pa_date;		// 등록일
	
	
	
	public int getPa_index() {
		return pa_index;
	}
	public void setPa_index(int pa_index) {
		this.pa_index = pa_index;
	}
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
	}
	public int getP_index() {
		return p_index;
	}
	public void setP_index(int p_index) {
		this.p_index = p_index;
	}
	public String getPa_content() {
		return pa_content;
	}
	public void setPa_content(String pa_content) {
		this.pa_content = pa_content;
	}
	public float getPa_grade() {
		return pa_grade;
	}
	public void setPa_grade(float pa_grade) {
		this.pa_grade = pa_grade;
	}
	public int getPa_view() {
		return pa_view;
	}
	public void setPa_view(int pa_view) {
		this.pa_view = pa_view;
	}
	public Date getPa_date() {
		return pa_date;
	}
	public void setPa_date(Date pa_date) {
		this.pa_date = pa_date;
	}
	public String getPa_subject() {
		return pa_subject;
	}
	public void setPa_subject(String pa_subject) {
		this.pa_subject = pa_subject;
	}
	
	@Override
	public String toString() {
		return "product_assessment [pa_index=" + pa_index + ", m_index=" + m_index + ", p_index=" + p_index
				+ ", pa_subject=" + pa_subject + ", pa_content=" + pa_content + ", pa_grade=" + pa_grade + ", pa_view="
				+ pa_view + ", pa_date=" + pa_date + "]";
	}
	
}
