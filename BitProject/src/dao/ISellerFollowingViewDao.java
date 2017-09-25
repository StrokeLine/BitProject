package dao;

import java.util.List;

import model.seller_following_view;

public interface ISellerFollowingViewDao {
	public seller_following_view selectSellerFollowingView(int m_index);
	public List<seller_following_view> selectAllSellerFollowingView(int s_index);
	public int selectCountSellerFollowingView(int s_index);
}
