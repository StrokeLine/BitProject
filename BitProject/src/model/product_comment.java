package model;

import java.util.Date;

public class product_comment {    //상품평
   private int    pc_index;        //index
   private int    p_index;         //상품 index
   private int    m_index;         //회원 index
   private Float  pc_grade;        //평점
   private String pc_substance;    //내용
   private Date   pc_date;         //등록일

public int getPc_index() {
	return pc_index;
}
public void setPc_index(int pc_index) {
	this.pc_index = pc_index;
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
public Float getPc_grade() {
	return pc_grade;
}
public void setPc_grade(Float pc_grade) {
	this.pc_grade = pc_grade;
}
public String getPc_substance() {
	return pc_substance;
}
public void setPc_substance(String pc_substance) {
	this.pc_substance = pc_substance;
}
public Date getPc_date() {
	return pc_date;
}
public void setPc_date(Date pc_date) {
	this.pc_date = pc_date;
}

   

}
