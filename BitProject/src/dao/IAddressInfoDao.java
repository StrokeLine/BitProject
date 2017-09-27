package dao;

import java.util.List;

import model.address_info;

public interface IAddressInfoDao {
	public int insertAddress(address_info address_info);
	public int updateAddress(address_info address_info);
	public int deleteAddress(int add_index);
	public address_info selectAddress(int add_index);
	public List<address_info> selectAllAddress(int m_index);
}
