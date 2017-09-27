package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.store_notice;

@Repository
public class StoreNoticeDao implements IStoreNoticeDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertStoreNotice(store_notice store_notice) {
		return session.insert("dao.IStoreNoticeDao.insertStoreNotice", store_notice);
	}

	@Override
	public int updateStoreNotice(store_notice store_notice) {
		return session.update("dao.IStoreNoticeDao.updateStoreNotice", store_notice);
	}

	@Override
	public int deleteStoreNotice(int sn_index) {
		return session.update("dao.IStoreNoticeDao.deleteStoreNotice", sn_index);
	}

	@Override
	public store_notice selectStoreNotice(int sn_index) {
		return session.selectOne("dao.IStoreNoticeDao.selectStoreNotice", sn_index);
	}

	@Override
	public List<store_notice> selectAllStoreNotice(int s_index) {
		return session.selectList("dao.IStoreNoticeDao.selectAllStoreNotice", s_index);
	}
	
	
}
