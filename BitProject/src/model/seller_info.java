package model;

import java.util.Date;

public class seller_info {    //�Ǹ�������
	private int    s_index;    //index
	private int    m_index;    //ȸ�� index
	private String s_nick;     //������
	private String s_bank;		//은행명
	private String s_holder;	//예금주
	private String s_account;  //���¹�ȣ
	private String s_imgSrc;   //�̹���
    private String s_address;  //�������� �ּ�
    private int    s_visit;    //�湮�ڼ�
    private int    s_sale;     //�Ǹż�
    private Float  s_grade;    //��������
    private Date   s_date;     //�����
  
    
public int getS_index() {
	return s_index;
}
public void setS_index(int s_index) {
	this.s_index = s_index;
}
public String getS_bank() {
	return s_bank;
}
public void setS_bank(String s_bank) {
	this.s_bank = s_bank;
}
public String getS_holder() {
	return s_holder;
}
public void setS_holder(String s_holder) {
	this.s_holder = s_holder;
}
public int getM_index() {
	return m_index;
}
public void setM_index(int m_index) {
	this.m_index = m_index;
}
public String getS_nick() {
	return s_nick;
}
public void setS_nick(String s_nick) {
	this.s_nick = s_nick;
}
public String getS_account() {
	return s_account;
}
public void setS_account(String s_account) {
	this.s_account = s_account;
}
public String getS_imgSrc() {
	return s_imgSrc;
}
public void setS_imgSrc(String s_imgSrc) {
	this.s_imgSrc = s_imgSrc;
}
public String getS_address() {
	return s_address;
}
public void setS_address(String s_address) {
	this.s_address = s_address;
}
public int getS_visit() {
	return s_visit;
}
public void setS_visit(int s_visit) {
	this.s_visit = s_visit;
}
public int getS_sale() {
	return s_sale;
}
public void setS_sale(int s_sale) {
	this.s_sale = s_sale;
}
public Float getS_grade() {
	return s_grade;
}
public void setS_grade(Float s_grade) {
	this.s_grade = s_grade;
}
public Date getS_date() {
	return s_date;
}
public void setS_date(Date s_date) {
	this.s_date = s_date;
}

@Override
public String toString() {
	return "seller_info [s_index=" + s_index + ", m_index=" + m_index + ", s_nick=" + s_nick + ", s_account="
			+ s_account + ", s_imgSrc=" + s_imgSrc + ", s_snsUrl=" + ", s_address=" + s_address
			+ ", s_visit=" + s_visit + ", s_sale=" + s_sale + ", s_grade=" + s_grade + ", s_date=" + s_date + "]";
}


}
