package model;

import java.util.Date;

public class product_info {      //상품정보
   private int    p_index;        //index
   private int    s_index;        //판매자 index
   private String p_hashTag;      //해시태그
   private String p_major_value;  //대분류  
   private String p_miner_value;  //소분류
   private String p_name;         //상품명
   private int    p_num;          //갯수
   private int    p_price;        //가격
   private int    p_fee;          //배송비
   private String p_imgSrc;       //이미지
   private Date   p_date;         //등록일
   
public int getP_index() {
	return p_index;
}
public void setP_index(int p_index) {
	this.p_index = p_index;
}
public int getS_index() {
	return s_index;
}
public void setS_index(int s_index) {
	this.s_index = s_index;
}
public String getP_hashTag() {
	return p_hashTag;
}
public void setP_hashTag(String p_hashTag) {
	this.p_hashTag = p_hashTag;
}
public String getP_major_value() {
	return p_major_value;
}
public void setP_major_value(String p_major_value) {
	this.p_major_value = p_major_value;
}
public String getP_miner_value() {
	return p_miner_value;
}
public void setP_miner_value(String p_miner_value) {
	this.p_miner_value = p_miner_value;
}
public String getP_name() {
	return p_name;
}
public void setP_name(String p_name) {
	this.p_name = p_name;
}
public int getP_num() {
	return p_num;
}
public void setP_num(int p_num) {
	this.p_num = p_num;
}
public int getP_price() {
	return p_price;
}
public void setP_price(int p_price) {
	this.p_price = p_price;
}
public int getP_fee() {
	return p_fee;
}
public void setP_fee(int p_fee) {
	this.p_fee = p_fee;
}
public String getP_imgSrc() {
	return p_imgSrc;
}
public void setP_imgSrc(String p_imgSrc) {
	this.p_imgSrc = p_imgSrc;
}
public Date getP_date() {
	return p_date;
}
public void setP_date(Date p_date) {
	this.p_date = p_date;
}

@Override
public String toString() {
	return "product_info [p_index=" + p_index + ", s_index=" + s_index + ", p_hashTag=" + p_hashTag + ", p_major_value="
			+ p_major_value + ", p_miner_value=" + p_miner_value + ", p_name=" + p_name + ", p_num=" + p_num
			+ ", p_price=" + p_price + ", p_fee=" + p_fee + ", p_imgSrc=" + p_imgSrc + ", p_date=" + p_date + "]";
}

     
}
