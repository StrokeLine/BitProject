package model;

import java.sql.Date;

public class product_inquiry_view {
	private int pi_index;		// index
	private int s_index;		// 상점 index
	private int m_index;		// 회원 index
	private int p_index;		// 상품 index
	private int pi_ri;			// 답글 구분
	private String p_name;		// 상품명
	private String m_email;		// 회원 이메일
	private String m_name;		// 회원 이름
	private String pi_type;		// 문의 유형
	private String pi_subject;	// 제목
	private String pi_content;	// 내용
	private int pi_view;		// 확인 유무
	private Date pi_date;		// 등록일
	
	
	public int getPi_index() {
		return pi_index;
	}
	public void setPi_index(int pi_index) {
		this.pi_index = pi_index;
	}
	public int getS_index() {
		return s_index;
	}
	public void setS_index(int s_index) {
		this.s_index = s_index;
	}
	public int getP_index() {
		return p_index;
	}
	public void setP_index(int p_index) {
		this.p_index = p_index;
	}
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
	}
	public int getPi_ri() {
		return pi_ri;
	}
	public void setPi_ri(int pi_ri) {
		this.pi_ri = pi_ri;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getPi_type() {
		return pi_type;
	}
	public void setPi_type(String pi_type) {
		this.pi_type = pi_type;
	}
	public String getPi_subject() {
		return pi_subject;
	}
	public void setPi_subject(String pi_subject) {
		this.pi_subject = pi_subject;
	}
	public String getPi_content() {
		return pi_content;
	}
	public void setPi_content(String pi_content) {
		this.pi_content = pi_content;
	}
	public int getPi_view() {
		return pi_view;
	}
	public void setPi_view(int pi_view) {
		this.pi_view = pi_view;
	}
	public Date getPi_date() {
		return pi_date;
	}
	public void setPi_date(Date pi_date) {
		this.pi_date = pi_date;
	}
	@Override
	public String toString() {
		return "product_inquiry_view [pi_index=" + pi_index + ", s_index=" + s_index + ", p_index=" + p_index
				+ ", m_index=" + m_index + ", pi_ri=" + pi_ri + ", p_name=" + p_name + ", m_email=" + m_email
				+ ", m_name=" + m_name + ", pi_type=" + pi_type + ", pi_subject=" + pi_subject + ", pi_content="
				+ pi_content + ", pi_view=" + pi_view + ", pi_date=" + pi_date + "]";
	}

}
