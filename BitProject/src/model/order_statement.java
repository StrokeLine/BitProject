package model;

import java.util.Date;

public class order_statement { //주문조회
    private int    os_index;    //index
    private int    p_index;     //상품 index
    private int    m_index;     //회원 index
    private int    os_num;      //갯수
    private String os_state;    //주문상태 구분값
    private Date   os_date;     //등록일
    
public int getOs_index() {
	return os_index;
}
public void setOs_index(int os_index) {
	this.os_index = os_index;
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
public int getOs_num() {
	return os_num;
}
public void setOs_num(int os_num) {
	this.os_num = os_num;
}
public String getOs_state() {
	return os_state;
}
public void setOs_state(String os_state) {
	this.os_state = os_state;
}
public Date getOs_date() {
	return os_date;
}
public void setOs_date(Date os_date) {
	this.os_date = os_date;
}

@Override
public String toString() {
	return "order_statement [os_index=" + os_index + ", p_index=" + p_index + ", m_index=" + m_index + ", os_num="
			+ os_num + ", os_state=" + os_state + ", os_date=" + os_date + "]";
}


}
