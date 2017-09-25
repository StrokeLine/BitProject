package model;

import java.sql.Date;

public class product_favorite {
	private int pf_index;	// index
	private int m_index;	// 회원 index
	private int p_index;	// 상품 index
	private Date pf_date;	// 등록일
	
	
	public int getPf_index() {
		return pf_index;
	}
	public void setPf_index(int pf_index) {
		this.pf_index = pf_index;
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
	public Date getPf_date() {
		return pf_date;
	}
	public void setPf_date(Date pf_date) {
		this.pf_date = pf_date;
	}
	@Override
	public String toString() {
		return "product_favorite [pf_index=" + pf_index + ", m_index=" + m_index + ", p_index=" + p_index + ", pf_date="
				+ pf_date + "]";
	}
	
}
