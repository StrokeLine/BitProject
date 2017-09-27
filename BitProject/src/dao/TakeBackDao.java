package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.take_back;

@Repository
public class TakeBackDao implements ITakeBackDao {
	@Autowired
	private SqlSession session;

	@Override
	public List<take_back> selectTakeBackSeller(int s_index) {
		return session.selectList("dao.ITakeBackDao.selectTakeBackSeller", s_index);
	}

	@Override
	public List<take_back> selectTakeBackMember(int m_index) {
		return session.selectList("dao.ITakeBackDao.selectTakeBackMember", m_index);
		}
	
}
