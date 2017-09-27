package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.customer_center_inquiry;

@Repository
public class CustomerCenterDao implements ICustomerCenterDao{	
	
	@Autowired
	SqlSession session;

	@Override
	public int insertCustomerCenterInquiry(customer_center_inquiry customer_center_inquiry) {		
		return session.insert("dao.ICustomerCenterDao.insertCustomerCenterInquiry", customer_center_inquiry);
	}
	
	@Override
	public customer_center_inquiry selectCustomerCenterInquiry(int cc_index) {		
		return session.selectOne("dao.ICustomerCenterDao.selectCustomerCenterInquiry", cc_index);
	}

	@Override
	public List<customer_center_inquiry> selectAllCustomerCenterInquiry(int m_index) {		
		return session.selectList("dao.ICustomerCenterDao.selectAllCustomerCenterInquiry", m_index);
	}
	
}
