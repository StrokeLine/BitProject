package model;

import java.util.Date;

public class member_info {   //ȸ������
   private int    m_index;    //index
   private String m_name;     //�̸�
   private String m_tel;      //��ȭ��ȣ
   private String m_email;    //�̸���
   private String m_password; //��й�ȣ
   private Date   m_date;     //�����
   
public int getM_index() {
	return m_index;
}
public void setM_index(int m_index) {
	this.m_index = m_index;
}
public String getM_name() {
	return m_name;
}
public void setM_name(String m_name) {
	this.m_name = m_name;
}

public String getM_tel() {
	return m_tel;
}
public void setM_tel(String m_tel) {
	this.m_tel = m_tel;
}
public String getM_email() {
	return m_email;
}
public void setM_email(String m_email) {
	this.m_email = m_email;
}
public String getM_password() {
	return m_password;
}
public void setM_password(String m_password) {
	this.m_password = m_password;
}
public Date getM_date() {
	return m_date;
}
public void setM_date(Date m_date) {
	this.m_date = m_date;
}

@Override
public String toString() {
	return "member_info [m_index=" + m_index + ", m_name=" + m_name + ", m_tel=" + m_tel + ", m_email=" + m_email
			+ ", m_password=" + m_password + ", m_date=" + m_date + "]";
}


}
