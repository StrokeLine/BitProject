package model;

import java.util.Date;

public class product_info {      //��ǰ����
   private int    p_index;        //index
   private int    s_index;        //�Ǹ��� index
   private int 	  m_index;
   private String p_hashTag;      //�ؽ��±�
   private String p_major_value;	//대분류
   private String p_miner_value;	//소분류
   private String p_name;         //��ǰ��
   private int    p_num;          //����
   private int    p_price;        //����
   private int    p_fee;          //��ۺ�
   private String p_imgSrc;       //�̹���
   private String p_posting_deadline;
   private Date   p_date;         //�����
   private String p_content;
   
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
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
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
	public String getP_posting_deadline() {
		return p_posting_deadline;
	}
	public void setP_posting_deadline(String p_posting_deadline) {
		this.p_posting_deadline = p_posting_deadline;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	
	
	@Override
	public String toString() {
		return "product_info [p_index=" + p_index + ", s_index=" + s_index + ", m_index=" + m_index + ", p_hashTag="
				+ p_hashTag + ", p_major_value=" + p_major_value + ", p_miner_value=" + p_miner_value + ", p_name="
				+ p_name + ", p_num=" + p_num + ", p_price=" + p_price + ", p_fee=" + p_fee + ", p_imgSrc=" + p_imgSrc
				+ ", p_posting_deadline=" + p_posting_deadline + ", p_date=" + p_date + ", p_content=" + p_content
				+ "]";
	}
	
}
