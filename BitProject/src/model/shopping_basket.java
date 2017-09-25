package model;

import java.util.Date;

public class shopping_basket { // ��ٱ���
	private int sb_index; // index
	private int p_index; // ��ǰ index
	private int m_index; // ȸ�� index
	private int sb_num; // ����
	private Date sb_date; // �����

	public int getSb_index() {
		return sb_index;
	}

	public void setSb_index(int sb_index) {
		this.sb_index = sb_index;
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

	public int getSb_num() {
		return sb_num;
	}

	public void setSb_num(int sb_num) {
		this.sb_num = sb_num;
	}

	public Date getSb_date() {
		return sb_date;
	}

	public void setSb_date(Date sb_date) {
		this.sb_date = sb_date;
	}

	@Override
	public String toString() {
		return "shopping_basket [sb_index=" + sb_index + ", p_index=" + p_index + ", m_index=" + m_index + ", sb_num="
				+ sb_num + ", sb_date=" + sb_date + "]";
	}

}
