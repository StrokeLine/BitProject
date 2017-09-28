package model;

import java.sql.Date;

public class order_statement {
	private int os_index;
	private int s_index;
	private int m_index;
	private int p_index;
	private int os_num;
	private String os_deposit_state;
	private String os_handling_state;
	private Date os_date;
	
	
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
	public String getOs_deposit_state() {
		return os_deposit_state;
	}
	public void setOs_deposit_state(String os_deposit_state) {
		this.os_deposit_state = os_deposit_state;
	}
	public String getOs_handling_state() {
		return os_handling_state;
	}
	public void setOs_handling_state(String os_handling_state) {
		this.os_handling_state = os_handling_state;
	}
	public Date getOs_date() {
		return os_date;
	}
	public void setOs_date(Date os_date) {
		this.os_date = os_date;
	}
	
	
	@Override
	public String toString() {
		return "order_statement2 [os_index=" + os_index + ", s_index=" + s_index + ", m_index=" + m_index + ", p_index="
				+ p_index + ", os_num=" + os_num + ", os_deposit_state=" + os_deposit_state + ", os_handling_state="
				+ os_handling_state + ", os_date=" + os_date + "]";
	}
}
