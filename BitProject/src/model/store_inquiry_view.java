package model;

import java.sql.Date;

public class store_inquiry_view {
	private int si_index;
	private int s_index;
	private int m_index;
	private int si_ri;
	private String m_email;
	private String m_name;
	private String si_type;
	private String si_subject;
	private String si_content;
	private int si_view;
	private Date si_date;
	
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
	public int getSi_ri() {
		return si_ri;
	}
	public void setSi_ri(int si_ri) {
		this.si_ri = si_ri;
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
		return "store_inquiry_view [si_index=" + si_index + ", s_index=" + s_index + ", m_index=" + m_index + ", si_ri="
				+ si_ri + ", m_email=" + m_email + ", m_name=" + m_name + ", si_type=" + si_type + ", si_subject="
				+ si_subject + ", si_content=" + si_content + ", si_view=" + si_view + ", si_date=" + si_date + "]";
	}
	
}
