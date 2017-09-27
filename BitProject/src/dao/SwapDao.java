package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.swap;

@Repository
public class SwapDao implements ISwapDao {
	@Autowired
	private SqlSession session;

	@Override
	public List<swap> selectSwapSeller(int s_index) {
		return session.selectList("dao.ISwapDao.selectSwapSeller", s_index);
	}

	@Override
	public List<swap> selectSwapMember(int m_index) {
		return session.selectList("dao.ISwapDao.selectSwapMember", m_index);
	}
	
}
