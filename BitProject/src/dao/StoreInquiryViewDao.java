package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.store_inquiry_view;

@Repository
public class StoreInquiryViewDao implements IStoreInquiryViewDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public store_inquiry_view selectStoreInquiryView(int si_index) {
		return session.selectOne("dao.IStoreInquiryViewDao.selectStoreInquiryView", si_index);
	}

	@Override
	public List<store_inquiry_view> selectAllStoreInquiryViewS(int s_index) {
		return session.selectList("dao.IStoreInquiryViewDao.selectAllStoreInquiryViewS", s_index);
	}

	@Override
	public List<store_inquiry_view> selectAllStoreInquiryViewM(int m_index) {
		return session.selectList("dao.IStoreInquiryViewDao.selectAllStoreInquiryViewM", m_index);
	}

	@Override
	public List<store_inquiry_view> selectAllStoreInquiryViewT(String si_type) {
		return session.selectList("dao.IStoreInquiryViewDao.selectAllStoreInquiryViewT", si_type);
	}

	@Override
	public List<store_inquiry_view> selectAllStoreInquiryViewV(int si_view) {
		return session.selectList("dao.IStoreInquiryViewDao.selectAllStoreInquiryViewV", si_view);
	}
	
}
