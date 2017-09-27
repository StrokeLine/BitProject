package dao;

import java.util.List;

import model.store_following_view;

public interface IStoreFollowingViewDao {
	public List<store_following_view> selectFollowingListView(int m_index);
	public List<store_following_view> selectFollowerListView(int s_index);
	public int selectCountFollowingView(int m_index);
	public int selectCountFollowerView(int s_index);
}
