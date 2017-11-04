package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.store_following;

@Repository
public class StoreFollowingDao implements IStoreFollowingDao{
	@Autowired
	private SqlSession session;

	@Override
	public int insertStoreFollowing(store_following store_following) {
		return session.insert("dao.IStoreFollowingDao.insertStoreFollowing", store_following);
	}

	@Override
	public int updateStoreFollowing(store_following store_following) {
		return session.update("dao.IStoreFollowingDao.updateStoreFollowing", store_following);
	}

	@Override
	public int deleteStoreFollowing(int sf_index) {
		return session.delete("dao.IStoreFollowingDao.deleteStoreFollowing", sf_index);
	}

	@Override
	public store_following selectStoreFollowing(int sf_index) {
		return session.selectOne("dao.IStoreFollowingDao. selectStoreFollowing", sf_index);
	}

	@Override
	public List<store_following> selectStoreFollowingUserList(int s_index) {
		return session.selectList("dao.IStoreFollowingDao.selectStoreFollowingUserList", s_index);
	}
	
}
