package model;

import java.sql.Date;

public class product_notice {
	private int pn_index;	// index
	private int m_index;	// 회원 index
	private int s_index;	// 상점 index
	private int p_index;	// 상품 index
	private int pn_view;	// 확인 유무
	private Date pn_date;	// 등록일
	public int getPn_index() {
		return pn_index;
	}
	public void setPn_index(int pn_index) {
		this.pn_index = pn_index;
	}
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
	public int getP_index() {
		return p_index;
	}
	public void setP_index(int p_index) {
		this.p_index = p_index;
	}
	public int getPn_view() {
		return pn_view;
	}
	public void setPn_view(int pn_view) {
		this.pn_view = pn_view;
	}
	public Date getPn_date() {
		return pn_date;
	}
	public void setPn_date(Date pn_date) {
		this.pn_date = pn_date;
	}
	@Override
	public String toString() {
		return "product_notice [pn_index=" + pn_index + ", m_index=" + m_index + ", s_index=" + s_index + ", p_index="
				+ p_index + ", pn_view=" + pn_view + ", pn_date=" + pn_date + "]";
	}
	
}
