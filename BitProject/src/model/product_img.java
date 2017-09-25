package model;

import java.sql.Date;

public class product_img {
	private int pi_index;	// index
	private int p_index;	// 상품 index
	private String diff;	// 구분 - 메인/내용
	private String pi_src;	// 경로
	private Date pi_date;	// 등록일
	
	
	public int getPi_index() {
		return pi_index;
	}
	public void setPi_index(int pi_index) {
		this.pi_index = pi_index;
	}
	public int getP_index() {
		return p_index;
	}
	public void setP_index(int p_index) {
		this.p_index = p_index;
	}
	public String getDiff() {
		return diff;
	}
	public void setDiff(String diff) {
		this.diff = diff;
	}
	public String getPi_src() {
		return pi_src;
	}
	public void setPi_src(String pi_src) {
		this.pi_src = pi_src;
	}
	public Date getPi_date() {
		return pi_date;
	}
	public void setPi_date(Date pi_date) {
		this.pi_date = pi_date;
	}
	@Override
	public String toString() {
		return "product_img [pi_index=" + pi_index + ", p_index=" + p_index + ", diff=" + diff + ", pi_src=" + pi_src
				+ ", pi_date=" + pi_date + "]";
	}
	
}
