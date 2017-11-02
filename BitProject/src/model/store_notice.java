package model;

import java.sql.Date;

public class store_notice {
	private int sn_index;		// index
	private int s_index;		// 상점 index
	private String sn_subject;	// 제목
	private String sn_content;	// 내용
	private Date sn_date;		// 등록일
	
	
	public int getSn_index() {
		return sn_index;
	}
	public void setSn_index(int sn_index) {
		this.sn_index = sn_index;
	}
	public int getS_index() {
		return s_index;
	}
	public void setS_index(int s_index) {
		this.s_index = s_index;
	}
	public String getSn_subject() {
		return sn_subject;
	}
	public void setSn_subject(String sn_subject) {
		this.sn_subject = sn_subject;
	}
	public String getSn_content() {
		return sn_content;
	}
	public void setSn_content(String sn_content) {
		this.sn_content = sn_content;
	}
	public Date getSn_date() {
		return sn_date;
	}
	public void setSn_date(Date sn_date) {
		this.sn_date = sn_date;
	}
	@Override
	public String toString() {
		return "store_notice [sn_index=" + sn_index + ", s_index=" + s_index + ", sn_subject=" + sn_subject
				+ ", sn_content=" + sn_content + ", sn_date=" + sn_date + "]";
	}

}
