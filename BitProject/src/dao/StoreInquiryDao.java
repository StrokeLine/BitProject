package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.store_inquiry;

@Repository
public class StoreInquiryDao implements IStoreInquiryDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertStoreInquiry(store_inquiry store_inquiry) {
		return session.insert("dao.IStoreInquiryDao.insertStoreInquiry", store_inquiry);
	}

	@Override
	public int updateStoreInquiry(store_inquiry store_inquiry) {
		return session.update("dao.IStoreInquiryDao.updateStoreInquiry", store_inquiry);
	}

	@Override
	public int deleteStoreInquiry(int si_index) {
		return session.delete("dao.IStoreInquiryDao.deleteStoreInquiry", si_index);
	}

	@Override
	public store_inquiry selectStoreInquiryS(int s_index) {
		return session.selectOne("dao.IStoreInquiryDao.deleteStoreInquiry", s_index);
	}

	@Override
	public store_inquiry selectStoreInquiryM(int m_index) {
		return session.selectOne("dao.IStoreInquiryDao.deleteStoreInquiry", m_index);
	}
	
	
}
