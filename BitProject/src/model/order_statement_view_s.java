package model;

import java.sql.Date;

public class order_statement_view_s {

	private int os_index;
	private int s_index;
	private int m_index;
	private int p_index;
	private int os_num;
	private String p_name;
	private String p_img;
	private String m_email;
	private String m_name;
	private String os_ds;
	private String os_hs;
	private int om_view;
	private Date om_date;
	
	
	public int getOs_index() {
		return os_index;
	}
	public void setOs_index(int os_index) {
		this.os_index = os_index;
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
	public int getP_index() {
		return p_index;
	}
	public void setP_index(int p_index) {
		this.p_index = p_index;
	}
	public int getOs_num() {
		return os_num;
	}
	public void setOs_num(int os_num) {
		this.os_num = os_num;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
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
	
	public String getOs_ds() {
		return os_ds;
	}
	public void setOs_ds(String os_ds) {
		this.os_ds = os_ds;
	}
	public String getOs_hs() {
		return os_hs;
	}
	public void setOs_hs(String os_hs) {
		this.os_hs = os_hs;
	}
	public int getOm_view() {
		return om_view;
	}
	public void setOm_view(int om_view) {
		this.om_view = om_view;
	}
	public Date getOm_date() {
		return om_date;
	}
	public void setOm_date(Date om_date) {
		this.om_date = om_date;
	}
	@Override
	public String toString() {
		return "order_statement_view_s [os_index=" + os_index + ", s_index=" + s_index + ", m_index=" + m_index
				+ ", p_index=" + p_index + ", os_num=" + os_num + ", p_name=" + p_name + ", p_img=" + p_img
				+ ", m_email=" + m_email + ", m_name=" + m_name + ", os_ds=" + os_ds + ", os_hs=" + os_hs + ", om_view="
				+ om_view + ", om_date=" + om_date + "]";
	}
	
	
	
}
