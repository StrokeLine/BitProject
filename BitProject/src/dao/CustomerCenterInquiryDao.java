package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.customer_center_inquiry;

@Repository
public class CustomerCenterInquiryDao implements ICustomerCenterInquiryDao{	
	
	@Autowired
	SqlSession session;

	@Override
	public int insertCustomerCenterInquiry(customer_center_inquiry customer_center_inquiry) {		
		return session.insert("dao.ICustomerCenterInquiryDao.insertCustomerCenterInquiry", customer_center_inquiry);
	}
	
	@Override
	public customer_center_inquiry selectCustomerCenterInquiry(int cc_index) {		
		return session.selectOne("dao.ICustomerCenterInquiryDao.selectCustomerCenterInquiry", cc_index);
	}

	@Override
	public List<customer_center_inquiry> selectAllCustomerCenterInquiry(int m_index) {		
		return session.selectList("dao.ICustomerCenterInquiryDao.selectAllCustomerCenterInquiry", m_index);
	}
	
}
