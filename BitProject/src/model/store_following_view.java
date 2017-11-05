package model;

import java.sql.Date;

public class store_following_view {
	private int m_index;
	private int s_index;
	private String s_nick;
	private String m_name;
	private String m_email;
	private String m_img;
	private Date sf_date;
	

	
	public int getM_index() {
		return m_index;
	}

	public void setM_index(int m_index) {
		this.m_index = m_index;
	}

	public int getS_index() {
		return s_index;
	}

	public void setS_index(int s_index) {
		this.s_index = s_index;
	}

	public String getS_nick() {
		return s_nick;
	}

	public void setS_nick(String s_nick) {
		this.s_nick = s_nick;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}

	public Date getSf_date() {
		return sf_date;
	}

	public void setSf_date(Date sf_date) {
		this.sf_date = sf_date;
	}

	@Override
	public String toString() {
		return "store_following_view [m_index=" + m_index + ", s_index=" + s_index + ", s_nick=" + s_nick + ", m_name="
				+ m_name + ", m_email=" + m_email + ", m_img=" + m_img + ", sf_date=" + sf_date + "]";
	}
	
	
}
