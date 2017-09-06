package model;

import java.util.Date;

public class product_inquiry {  //상품문의
   private int     pi_index;     //index
   private int     p_index;      //상품 index
   private int     m_index;      //회원 index
   private int     pi_ref;       //답글 구분자
   private boolean pi_state;     //답글 상태
   private String  pi_type;      //유형
   private String  pi_subject;   //제목
   private String  pi_content;   //내용
   private Date    pi_date;      //등록일
   
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
public int getM_index() {
	return m_index;
}
public void setM_index(int m_index) {
	this.m_index = m_index;
}
public int getPi_ref() {
	return pi_ref;
}
public void setPi_ref(int pi_ref) {
	this.pi_ref = pi_ref;
}
public boolean isPi_state() {
	return pi_state;
}
public void setPi_state(boolean pi_state) {
	this.pi_state = pi_state;
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
public Date getPi_date() {
	return pi_date;
}
public void setPi_date(Date pi_date) {
	this.pi_date = pi_date;
}

@Override
public String toString() {
	return "product_inquiry [pi_index=" + pi_index + ", p_index=" + p_index + ", m_index=" + m_index + ", pi_ref="
			+ pi_ref + ", pi_state=" + pi_state + ", pi_type=" + pi_type + ", pi_subject=" + pi_subject
			+ ", pi_content=" + pi_content + ", pi_date=" + pi_date + "]";
}


}
