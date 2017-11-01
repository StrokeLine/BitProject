package model;

import java.sql.Date;

public class shopping_basket_view {
	private int sb_index;	// index
	private int m_index;	// 회원 index
	private int p_index;	// 상품 index
	private String p_img;	// 이미지
	private String p_name;	// 상품명
	private int sb_num;		// 수량
	private int p_price;	// 가격
	private int p_fee;		// 배송비
	private int sb_total;	// (가격 * 수량) + 배송비 
	private Date sb_date;	// 등록일
	
	
	public int getSb_index() {
		return sb_index;
	}
	public void setSb_index(int sb_index) {
		this.sb_index = sb_index;
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
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getSb_num() {
		return sb_num;
	}
	public void setSb_num(int sb_num) {
		this.sb_num = sb_num;
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
	public Date getSb_date() {
		return sb_date;
	}
	public void setSb_date(Date sb_date) {
		this.sb_date = sb_date;
	}
	public int getSb_total() {
		return sb_total;
	}
	public void setSb_total(int sb_total) {
		this.sb_total = sb_total;
	}
	
	@Override
	public String toString() {
		return "shopping_basket_view [sb_index=" + sb_index + ", m_index=" + m_index + ", p_index=" + p_index
				+ ", p_img=" + p_img + ", p_name=" + p_name + ", sb_num=" + sb_num + ", p_price=" + p_price + ", p_fee="
				+ p_fee + ", sb_total=" + sb_total + ", sb_date=" + sb_date + "]";
	}
	
}
