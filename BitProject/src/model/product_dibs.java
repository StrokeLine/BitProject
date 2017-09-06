package model;

import java.util.Date;

public class product_dibs {  //상품찜
	private int  pd_index;    //index
    private int  m_index;     //회원 index
    private int  p_index;     //상품 index
    private Date pd_date;     //등록일
    
public int getPd_index() {
	return pd_index;
}
public void setPd_index(int pd_index) {
	this.pd_index = pd_index;
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
public Date getPd_date() {
	return pd_date;
}
public void setPd_date(Date pd_date) {
	this.pd_date = pd_date;
}

@Override
public String toString() {
	return "product_dibs [pd_index=" + pd_index + ", m_index=" + m_index + ", p_index=" + p_index + ", pd_date="
			+ pd_date + "]";
}


}
