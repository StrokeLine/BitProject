package model;

import java.util.Date;

public class seller_sns {
<<<<<<< HEAD
	private int ss_index;
	private int s_index;
	private String ss_sort;
	private String ss_address;
	private Date ss_date;
=======
	private int ss_index;		// index
	private int s_index;		// 상점 index
	private String ss_sort;		// sns 구분
	private String ss_address;	// 주소
	private Date ss_date;		// 등록일
	
	
>>>>>>> branch 'master' of https://github.com/StrokeLine/BitProject
	public int getSs_index() {
		return ss_index;
	}
	public void setSs_index(int ss_index) {
		this.ss_index = ss_index;
	}
	public int getS_index() {
		return s_index;
	}
	public void setS_index(int s_index) {
		this.s_index = s_index;
	}
	public String getSs_sort() {
		return ss_sort;
	}
	public void setSs_sort(String ss_sort) {
		this.ss_sort = ss_sort;
	}
	public String getSs_address() {
		return ss_address;
	}
	public void setSs_address(String ss_address) {
		this.ss_address = ss_address;
	}
	public Date getSs_date() {
		return ss_date;
	}
	public void setSs_date(Date ss_date) {
		this.ss_date = ss_date;
	}
<<<<<<< HEAD
=======
	@Override
	public String toString() {
		return "seller_sns [ss_index=" + ss_index + ", s_index=" + s_index + ", ss_sort=" + ss_sort + ", ss_address="
				+ ss_address + ", ss_date=" + ss_date + "]";
	}
	
>>>>>>> branch 'master' of https://github.com/StrokeLine/BitProject
}
