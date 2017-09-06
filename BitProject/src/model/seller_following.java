package model;

import java.util.Date;

public class seller_following { //판매자 팔로윙
    private int  sf_index;       //index
    private int  s_index;        //판매자 index
    private int  m_index;        //회원 index
    private Date sf_date;        //등록일
    
public int getSf_index() {
	return sf_index;
}
public void setSf_index(int sf_index) {
	this.sf_index = sf_index;
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
public Date getSf_date() {
	return sf_date;
}
public void setSf_date(Date sf_date) {
	this.sf_date = sf_date;
}

@Override
public String toString() {
	return "seller_following [sf_index=" + sf_index + ", s_index=" + s_index + ", m_index=" + m_index + ", sf_date="
			+ sf_date + "]";
}
	

}
