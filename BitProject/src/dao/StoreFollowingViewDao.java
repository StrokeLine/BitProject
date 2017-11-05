package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.store_following_view;

@Repository
public class StoreFollowingViewDao implements IStoreFollowingViewDao {
	@Autowired
	private SqlSession session;

	@Override
	public List<store_following_view> selectFollowingListView(int m_index) {
		return session.selectList("dao.IStoreFollowingViewDao.selectFollowingListView", m_index);
	}

	@Override
	public List<store_following_view> selectFollowerListView(int s_index) {
		return session.selectList("dao.IStoreFollowingViewDao.selectFollowerListView", s_index);
		}

	@Override
	public int selectCountFollowingView(int m_index) {
		return session.selectOne("dao.IStoreFollowingViewDao.selectCountFollowingView", m_index);
	}
	
	@Override
	public int selectCountFollowerView(int s_index) {
		return session.selectOne("dao.IStoreFollowingViewDao.selectCountFollowerView", s_index);
		}
}
