package model;

import java.sql.Date;

public class address_info {
	private int add_index;		// index
	private int m_index;		// 회원 index
	private String add_address;	// 주소
	private Date add_date;		// 등록일
	
	
	public int getAdd_index() {
		return add_index;
	}
	public void setAdd_index(int add_index) {
		this.add_index = add_index;
	}
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
	}
	public String getAdd_address() {
		return add_address;
	}
	public void setAdd_address(String add_address) {
		this.add_address = add_address;
	}
	public Date getAdd_date() {
		return add_date;
	}
	public void setAdd_date(Date add_date) {
		this.add_date = add_date;
	}
	@Override
	public String toString() {
		return "address_info [add_index=" + add_index + ", m_index=" + m_index + ", add_address=" + add_address
				+ ", add_date=" + add_date + "]";
	}
}
