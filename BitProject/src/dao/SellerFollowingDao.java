package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.seller_following;

@Repository
public class SellerFollowingDao implements ISellerFollowingDao{
	@Autowired
	private SqlSession session;

	@Override
	public int insertSellerFollowing(seller_following seller_following) {
		return session.insert("dao.ISellerFollowingDao.insertSellerFollowing", seller_following);
	}

	@Override
	public int updateSellerFollowing(seller_following seller_following) {
		return session.update("dao.ISellerFollowingDao.updateSellerFollowing", seller_following);
	}

	@Override
	public int deleteSellerFollowing(int sf_index) {
		return session.delete("dao.ISellerFollowingDao.deleteSellerFollowing", sf_index);
	}

	@Override
	public seller_following selectSellerFollowing(int sf_index) {
		return session.selectOne("dao.ISellerFollowingDao.selectSellerFollowing", sf_index);
	}
}
