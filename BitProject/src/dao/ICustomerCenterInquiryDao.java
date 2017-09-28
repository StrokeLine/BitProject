package dao;

import java.util.List;

import model.customer_center_inquiry;

public interface ICustomerCenterInquiryDao {	
	public int insertCustomerCenterInquiry(customer_center_inquiry customer_center_inquiry);
	public customer_center_inquiry selectCustomerCenterInquiry(int cc_index);
	public List<customer_center_inquiry> selectAllCustomerCenterInquiry(int m_index);	

}
