package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.address_info;

@Repository
public class AddressInfoDao implements IAddressInfoDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertAddress(address_info address_info) {
		return session.insert("dao.IAddressInfoDao.insertAddress", address_info);
	}

	@Override
	public int updateAddress(address_info address_info) {
		return session.update("dao.IAddressInfoDao.updateAddress", address_info);
	}

	@Override
	public int deleteAddress(int add_index) {
		return session.delete("dao.IAddressInfoDao.deleteAddress", add_index);
	}

	@Override
	public List<address_info> selectAddress(int m_index) {
		return session.selectList("dao.IAddressInfoDao.selectAddress", m_index);
	}
	
	
}
