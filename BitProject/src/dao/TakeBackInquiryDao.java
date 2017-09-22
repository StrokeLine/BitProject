package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.take_back_inquiry;

@Repository
public class TakeBackInquiryDao implements ITakeBackInquiryDao {
	@Autowired
	private SqlSession session;

	@Override
	public take_back_inquiry selectTakeBack() {
		return (take_back_inquiry) session.selectList("dao.ITakeBackInquiryDao.selectTakeBack");
	}
}
