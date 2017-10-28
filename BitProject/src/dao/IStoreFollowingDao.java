package dao;

import java.util.List;

import model.store_following;

public interface IStoreFollowingDao {
	public int insertStoreFollowing(store_following store_following);
	public int updateStoreFollowing(store_following store_following);
	public int deleteStoreFollowing(int sf_index);
	public store_following selectStoreFollowing(int sf_index);
	public List<store_following> selectStoreFollowingUserList(int s_index);
}
