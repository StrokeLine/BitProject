package model;

import java.util.Date;

public class seller_info {    //판매자정보
	private int    s_index;    //index
	private int    m_index;    //회원 index
	private String s_nick;     //상점명
	private String s_account;  //계좌번호
	private String s_imgSrc;   //이미지
    private String s_snsUrl;   //sns 주소
    private String s_address;  //오프라인 주소
    private int    s_visit;    //방문자수
    private int    s_sale;     //판매수
    private Float  s_grade;    //상점평점
    private Date   s_date;     //등록일
    
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
public String getS_snsUrl() {
	return s_snsUrl;
}
public void setS_snsUrl(String s_snsUrl) {
	this.s_snsUrl = s_snsUrl;
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
			+ s_account + ", s_imgSrc=" + s_imgSrc + ", s_snsUrl=" + s_snsUrl + ", s_address=" + s_address
			+ ", s_visit=" + s_visit + ", s_sale=" + s_sale + ", s_grade=" + s_grade + ", s_date=" + s_date + "]";
}


}
