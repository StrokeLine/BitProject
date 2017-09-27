package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.store_notice_view;

@Repository
public class StoreNoticeViewDao implements IStoreNoticeViewDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public store_notice_view selectStoreNoticeView(int sc_index) {
		return session.selectOne("dao.IStoreNoticeViewDao.selectStoreNoticeView", sc_index);
	}

	@Override
	public List<store_notice_view> selectAllStoreNoticeViewS(int s_index) {
		return session.selectList("dao.IStoreNoticeViewDao.selectAllStoreNoticeViewS", s_index);
	}

	@Override
	public List<store_notice_view> selectAllStoreNoticeViewM(int m_index) {
		return session.selectList("dao.IStoreNoticeViewDao.selectAllStoreNoticeViewM", m_index);
	}

	@Override
	public List<store_notice_view> selectAllStoreNoticeViewV(int v_index) {
		return session.selectList("dao.IStoreNoticeViewDao.selectAllStoreNoticeViewM", v_index);
	}
	
}
