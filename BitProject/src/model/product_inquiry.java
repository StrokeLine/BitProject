package model;

import java.util.Date;

public class product_inquiry { // ��ǰ����
	private int pi_index; // index
	private int s_index; //상점 index
	private int p_index; // ��ǰ index
	private int m_index; // ȸ�� index
	private int pi_reply_index; // ��� ������
	private String pi_type; // ����
	private String pi_subject; // ����
	private String pi_content; // ����
	private int pi_view; // 확인 유무
	private Date pi_date; // �����

	public int getPi_index() {
		return pi_index;
	}

	public void setPi_index(int pi_index) {
		this.pi_index = pi_index;
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

	public int getPi_reply_index() {
		return pi_reply_index;
	}

	public void setPi_reply_index(int pi_reply_index) {
		this.pi_reply_index = pi_reply_index;
	}

	public String getPi_type() {
		return pi_type;
	}

	public void setPi_type(String pi_type) {
		this.pi_type = pi_type;
	}

	public String getPi_subject() {
		return pi_subject;
	}

	public void setPi_subject(String pi_subject) {
		this.pi_subject = pi_subject;
	}

	public String getPi_content() {
		return pi_content;
	}

	public void setPi_content(String pi_content) {
		this.pi_content = pi_content;
	}

	public int getPi_view() {
		return pi_view;
	}

	public void setPi_view(int pi_view) {
		this.pi_view = pi_view;
	}

	public Date getPi_date() {
		return pi_date;
	}

	public void setPi_date(Date pi_date) {
		this.pi_date = pi_date;
	}

	@Override
	public String toString() {
		return "product_inquiry [pi_index=" + pi_index + ", s_index=" + s_index + ", p_index=" + p_index + ", m_index="
				+ m_index + ", pi_reply_index=" + pi_reply_index + ", pi_type=" + pi_type + ", pi_subject=" + pi_subject
				+ ", pi_content=" + pi_content + ", pi_view=" + pi_view + ", pi_date=" + pi_date + "]";
	}
	
}