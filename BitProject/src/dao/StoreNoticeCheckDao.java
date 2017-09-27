package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.store_notice_check;

@Repository
public class StoreNoticeCheckDao implements IStoreNoticeCheckDao {

	@Autowired
	private SqlSession session;

	@Override
	public int insertStoreNoticeCheck(store_notice_check store_notice_check) {
		return session.insert("dao.IStoreNoticeCheckDao.insertStoreNoticeCheck", store_notice_check);
	}

	@Override
	public int updateStoreNoticeCheck(store_notice_check store_notice_check) {
		return session.update("dao.IStoreNoticeCheckDao.updateStoreNoticeCheck", store_notice_check);
	}

	@Override
	public int deleteStoreNoticeCheck(int sc_index) {
		return session.delete("dao.IStoreNoticeCheckDao.deleteStoreNoticeCheck", sc_index);
	}

	@Override
	public store_notice_check selectStoreNoticeCheck(int sc_index) {
		return session.selectOne("dao.IStoreNoticeCheckDao.selectStoreNoticeCheck", sc_index);
	}
	
}
