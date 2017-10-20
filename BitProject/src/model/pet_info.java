package model;

import java.util.Date;

public class pet_info {
	private int pet_index; // 펫 index
	private int m_index; // 회원 index
	private String pet_name; // 펫 이름
	private int pet_gender; //펫 성별
	private Date pet_birthday; // 펫 생일
	private String pet_breeds; // 견종
	private String pet_img; // 이미지
	private Date pet_date; // 펫 등록일
	
	public int getPet_index() {
		return pet_index;
	}
	public void setPet_index(int pet_index) {
		this.pet_index = pet_index;
	}
	public int getM_index() {
		return m_index;
	}
	public void setM_index(int m_index) {
		this.m_index = m_index;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	
	public int getPet_gender() {
		return pet_gender;
	}
	public void setPet_gender(int pet_gender) {
		this.pet_gender = pet_gender;
	}
	public Date getPet_birthday() {
		return pet_birthday;
	}
	public void setPet_birthday(Date pet_birthday) {
		this.pet_birthday = pet_birthday;
	}
	public String getPet_breeds() {
		return pet_breeds;
	}
	public void setPet_breeds(String pet_breeds) {
		this.pet_breeds = pet_breeds;
	}
	public String getPet_img() {
		return pet_img;
	}
	public void setPet_img(String pet_img) {
		this.pet_img = pet_img;
	}
	public Date getPet_date() {
		return pet_date;
	}
	public void setPet_date(Date pet_date) {
		this.pet_date = pet_date;
	}
	@Override
	public String toString() {
		return "pet_info [pet_index=" + pet_index + ", m_index=" + m_index + ", pet_name=" + pet_name + ", pet_gender="
				+ pet_gender + ", pet_birthday=" + pet_birthday + ", pet_breeds=" + pet_breeds + ", pet_img=" + pet_img
				+ ", pet_date=" + pet_date + "]";
	}

	
	
}
