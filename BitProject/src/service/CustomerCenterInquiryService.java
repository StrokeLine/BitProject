package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CustomerCenterInquiryDao;
import model.customer_center_inquiry;

@Service
public class CustomerCenterInquiryService {
	
	@Autowired
	private CustomerCenterInquiryDao customerCenterInquiryDao;
	
	public int addCustomerCenterInquiry(customer_center_inquiry customer_center_inquiry){
		
		int result = customerCenterInquiryDao.insertCustomerCenterInquiry(customer_center_inquiry);
		
		if( result > 0){
			return customer_center_inquiry.getM_index();
			
		} else{
			return 0;
		}
	}
	
	public List<customer_center_inquiry> getAllCustomerCenterInquiry(int m_index){
		return customerCenterInquiryDao.selectAllCustomerCenterInquiry(m_index);
	}

}
