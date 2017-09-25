package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.take_back;

@Repository
public class TakeBackDao implements ITakeBackDao {
	@Autowired
	private SqlSession session;

	@Override
	public take_back selectTakeBack() {
		return (take_back) session.selectList("dao.ITakeBackInquiryDao.selectTakeBack");
	}
}
