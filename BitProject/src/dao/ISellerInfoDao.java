package dao;

import java.util.List;

import model.seller_info;

public interface ISellerInfoDao {
	public int insertSellerInfo(seller_info seller_info);
	public int updateSellerInfo(seller_info seller_info);
	public int deleteSellerInfo(int m_index);
	public seller_info selectSellerInfo(int s_index);
	public List<seller_info> selectAllSellerInfo();
	public seller_info getStoreinfo(int s_index);
}
