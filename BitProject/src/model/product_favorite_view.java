package model;

import java.sql.Date;

public class product_favorite_view {
	private int pf_index;	// index
	private int m_index;	// 회원 index
	private int p_index;	// 상품 index
	private String p_name;	// 상품명
	private String p_img;	// 이미지
	private int p_num;		// 수량
	private int p_price;	// 가격
	private int p_fee;		// 배송비
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
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_fee() {
		return p_fee;
	}
	public void setP_fee(int p_fee) {
		this.p_fee = p_fee;
	}
	public Date getPf_date() {
		return pf_date;
	}
	public void setPf_date(Date pf_date) {
		this.pf_date = pf_date;
	}
	@Override
	public String toString() {
		return "product_favorit_view [pf_index=" + pf_index + ", m_index=" + m_index + ", p_index=" + p_index
				+ ", p_name=" + p_name + ", p_img=" + p_img + ", p_num=" + p_num + ", p_price=" + p_price + ", p_fee="
				+ p_fee + ", pf_date=" + pf_date + "]";
	}
	
}
