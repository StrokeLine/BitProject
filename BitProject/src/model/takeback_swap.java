package model;

import java.util.Date;

public class takeback_swap {
	private int tb_index;
	private int s_index;
	private int m_index;
	private int p_index;
	private String tb_diff;
	private int tb_num;
	private String tb_content;
	private String tb_handling_state;
	private boolean tb_view;
	private Date tb_date;
	public int getTb_index() {
		return tb_index;
	}
	public void setTb_index(int tb_index) {
		this.tb_index = tb_index;
	}
	public int getS_index() {
		return s_index;
	}
	public void setS_index(int s_index) {
		this.s_index = s_index;
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
	public String getTb_diff() {
		return tb_diff;
	}
	public void setTb_diff(String tb_diff) {
		this.tb_diff = tb_diff;
	}
	public int getTb_num() {
		return tb_num;
	}
	public void setTb_num(int tb_num) {
		this.tb_num = tb_num;
	}
	public String getTb_content() {
		return tb_content;
	}
	public void setTb_content(String tb_content) {
		this.tb_content = tb_content;
	}
	public String getTb_handling_state() {
		return tb_handling_state;
	}
	public void setTb_handling_state(String tb_handling_state) {
		this.tb_handling_state = tb_handling_state;
	}
	public boolean isTb_view() {
		return tb_view;
	}
	public void setTb_view(boolean tb_view) {
		this.tb_view = tb_view;
	}
	public Date getTb_date() {
		return tb_date;
	}
	public void setTb_date(Date tb_date) {
		this.tb_date = tb_date;
	}
}