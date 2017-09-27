package dao;

import model.seller_info;

public interface ISellerInfoDao {
	public int insertSellerInfo(seller_info seller_info);
	public int updateSellerInfo(seller_info seller_info);
	public int deleteSellerInfo(int s_index);
	public seller_info selectSellerInfo(int s_index);
}
