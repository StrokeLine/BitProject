package dao;

import model.seller_sns;

public interface ISellerSnsDao {
	public int insertSellerSns(seller_sns seller_sns);
	public int updateSellerSns(seller_sns seller_sns);
	public int deleteSellerSns(int ss_index);
	public seller_sns selectSellerSns(int ss_index);
}
