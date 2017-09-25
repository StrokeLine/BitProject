package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.seller_following_view;

@Repository
public class SellerFollowingViewDao implements ISellerFollowingViewDao {
	@Autowired
	private SqlSession session;

	@Override
	public seller_following_view selectSellerFollowingView(int m_index) {
		return session.selectOne("dao.ISellerFollowingViewDao.selectSellerFollowingView", m_index);
	}

	@Override
	public List<seller_following_view> selectAllSellerFollowingView(int s_index) {
		return session.selectList("dao.ISellerFollowingViewDao.selectAllSellerFollowing", s_index);
		}

	@Override
	public int selectCountSellerFollowingView(int s_index) {
		return session.selectOne("dao.ISellerFollowingViewDao.selectCountSellerFollowing", s_index);
		}
	
	
}
