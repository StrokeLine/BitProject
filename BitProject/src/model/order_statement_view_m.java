package model;

import java.sql.Date;

public class order_statement_view_m {
	private int om_index;
	private int m_index;
	private int p_index;
	private int om_num;
	private int p_price;
	private int p_fee;
	private String p_name;
	private String p_img;
	private String om_ds;
	private String om_hs;
	private int om_view;
	private Date om_date;
	
	
	public int getOm_index() {
		return om_index;
	}
	public void setOm_index(int om_index) {
		this.om_index = om_index;
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
	public int getOm_num() {
		return om_num;
	}
	public void setOm_num(int om_num) {
		this.om_num = om_num;
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
	public String getOm_ds() {
		return om_ds;
	}
	public void setOm_ds(String om_ds) {
		this.om_ds = om_ds;
	}
	public String getOm_hs() {
		return om_hs;
	}
	public void setOm_hs(String om_hs) {
		this.om_hs = om_hs;
	}
	public int getOm_view() {
		return om_view;
	}
	public void setOm_view(int om_view) {
		this.om_view = om_view;
	}
	public Date getOm_date() {
		return om_date;
	}
	public void setOm_date(Date om_date) {
		this.om_date = om_date;
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
	
	@Override
	public String toString() {
		return "order_statement_view_m [om_index=" + om_index + ", m_index=" + m_index + ", p_index=" + p_index
				+ ", om_num=" + om_num + ", p_price=" + p_price + ", p_fee=" + p_fee + ", p_name=" + p_name + ", p_img="
				+ p_img + ", om_ds=" + om_ds + ", om_hs=" + om_hs + ", om_view=" + om_view + ", om_date=" + om_date
				+ "]";
	}
	
}
