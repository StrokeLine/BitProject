package dao;

import java.util.List;

import model.seller_following;

public interface ISellerFollowingDao {
	public int insertSellerFollowing(seller_following seller_following);
	public int updateSellerFollowing(seller_following seller_following);
	public int deleteSellerFollowing(int sf_index);
	public seller_following selectSellerFollowing(int sf_index);
}
