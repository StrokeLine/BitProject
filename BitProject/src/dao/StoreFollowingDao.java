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
	public int insertStoreFollowing(store_following seller_following) {
		return session.insert("dao.ISellerFollowingDao.insertStoreFollowing", seller_following);
	}

	@Override
	public int updateStoreFollowing(store_following seller_following) {
		return session.update("dao.ISellerFollowingDao.updateStoreFollowing", seller_following);
	}

	@Override
	public int deleteStoreFollowing(int sf_index) {
		return session.delete("dao.ISellerFollowingDao.deleteStoreFollowing", sf_index);
	}

	@Override
	public store_following selectStoreFollowing(int sf_index) {
		return session.selectOne("dao.ISellerFollowingDao. selectStoreFollowing", sf_index);
	}
}
