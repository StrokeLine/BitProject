package model;

import java.sql.Date;

public class store_notice_check {
	private int sc_index;	// index
	private int sn_index;	// 상점 알림 index
	private int m_index;	// 회원 index
	private int sc_view;	// 확인 유무
	private Date sc_date;	// 등록일
	public int getSc_index() {
		return sc_index;
	}
	public void setSc_index(int sc_index) {
		this.sc_index = sc_index;
	}
	public int getSn_index() {
		return sn_index;
	}
	public void setSn_index(int sn_index) {
		this.sn_index = sn_index;
	}
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
	}
	public int getSc_view() {
		return sc_view;
	}
	public void setSc_view(int sc_view) {
		this.sc_view = sc_view;
	}
	public Date getSc_date() {
		return sc_date;
	}
	public void setSc_date(Date sc_date) {
		this.sc_date = sc_date;
	}
	@Override
	public String toString() {
		return "store_notice_check [sc_index=" + sc_index + ", sn_index=" + sn_index + ", m_index=" + m_index
				+ ", sc_view=" + sc_view + ", sc_date=" + sc_date + "]";
	}
	
}
