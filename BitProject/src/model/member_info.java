package model;

import java.util.Date;

public class member_info { // ȸ������
	private int m_index; // index
	private String m_name; // �̸�
	private String m_tel; // ��ȭ��ȣ
	private boolean m_tel_check;
	private String m_email; // �̸���
	private boolean m_email_check;
	private String m_password; // ��й�ȣ
	private String m_img;
	private boolean m_admin;
	private Date m_date; // �����

	public int getM_index() {
		return m_index;
	}

	public void setM_index(int m_index) {
		this.m_index = m_index;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}

	public boolean isM_tel_check() {
		return m_tel_check;
	}

	public void setM_tel_check(boolean m_tel_check) {
		this.m_tel_check = m_tel_check;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public boolean isM_email_check() {
		return m_email_check;
	}

	public void setM_email_check(boolean m_email_check) {
		this.m_email_check = m_email_check;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}

	public boolean isM_admin() {
		return m_admin;
	}

	public void setM_admin(boolean m_admin) {
		this.m_admin = m_admin;
	}

	public Date getM_date() {
		return m_date;
	}

	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}

	@Override
	public String toString() {
		return "member_info [m_index=" + m_index + ", m_name=" + m_name + ", m_tel=" + m_tel + ", m_tel_check="
				+ m_tel_check + ", m_email=" + m_email + ", m_email_check=" + m_email_check + ", m_password="
				+ m_password + ", m_img=" + m_img + ", m_admin=" + m_admin + ", m_date=" + m_date + "]";
	}

}
