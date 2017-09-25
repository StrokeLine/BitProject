package model;

import java.sql.Date;

public class store_inquiry {
	private int si_index;		// index
	private int s_index;		// 상점 index
	private int m_index;		// 회원 index
	private int si_reply_index;	// 답글 구분
	private String si_type;		// 문의 유형
	private String si_subject;	// 제목
	private String si_content;	// 내용
	private int si_view;		// 확인 유무
	private Date si_date;		// 등록일
	
	public int getSi_index() {
		return si_index;
	}
	public void setSi_index(int si_index) {
		this.si_index = si_index;
	}
	public int getS_index() {
		return s_index;
	}
	public void setS_index(int s_index) {
		this.s_index = s_index;
	}
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
	}
	public int getSi_reply_index() {
		return si_reply_index;
	}
	public void setSi_reply_index(int si_reply_index) {
		this.si_reply_index = si_reply_index;
	}
	public String getSi_type() {
		return si_type;
	}
	public void setSi_type(String si_type) {
		this.si_type = si_type;
	}
	public String getSi_subject() {
		return si_subject;
	}
	public void setSi_subject(String si_subject) {
		this.si_subject = si_subject;
	}
	public String getSi_content() {
		return si_content;
	}
	public void setSi_content(String si_content) {
		this.si_content = si_content;
	}
	public int getSi_view() {
		return si_view;
	}
	public void setSi_view(int si_view) {
		this.si_view = si_view;
	}
	public Date getSi_date() {
		return si_date;
	}
	public void setSi_date(Date si_date) {
		this.si_date = si_date;
	}
	@Override
	public String toString() {
		return "store_inquiry [si_index=" + si_index + ", s_index=" + s_index + ", m_index=" + m_index
				+ ", si_reply_index=" + si_reply_index + ", si_type=" + si_type + ", si_subject=" + si_subject
				+ ", si_content=" + si_content + ", si_view=" + si_view + ", si_date=" + si_date + "]";
	}
	
}
