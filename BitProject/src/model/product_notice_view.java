package model;

import java.sql.Date;

public class product_notice_view {
	private int pn_index;	// index
	private int s_index;	// 상점 index
	private int p_index;	// 상품 index
	private int m_index;	// 회원 index
	private String p_name;	// 상품명
	private int p_price;	// 가격
	private String p_img;	// 이미지
	private String s_nick;	// 상점명
	private int pn_view;	// 확인 유무
	private Date pn_date;	// 등록일
	
	
	public int getPn_index() {
		return pn_index;
	}
	public void setPn_index(int pn_index) {
		this.pn_index = pn_index;
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
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getS_nick() {
		return s_nick;
	}
	public void setS_nick(String s_nick) {
		this.s_nick = s_nick;
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
		return "product_notice_view [pn_index=" + pn_index + ", s_index=" + s_index + ", p_index=" + p_index
				+ ", m_index=" + m_index + ", p_name=" + p_name + ", p_price=" + p_price + ", p_img=" + p_img
				+ ", s_nick=" + s_nick + ", pn_view=" + pn_view + ", pn_date=" + pn_date + "]";
	}
	
}
