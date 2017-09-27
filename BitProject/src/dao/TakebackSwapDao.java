package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.takeback_swap;

@Repository
public class TakebackSwapDao implements ITakebackSwapDao {
	@Autowired
	private SqlSession session;

	@Override
	public int insertTakebackSwap(takeback_swap takeback_swap) {
		return session.insert("dao.ITakebackSwapDao.insertTakebackSwap", takeback_swap);
	}

	@Override
	public int updateTakebackSwap(takeback_swap takeback_swap) {
		return session.update("dao.ITakebackSwapDao.updateTakebackSwap", takeback_swap);
	}

	@Override
	public int deleteTakebackSwap(int tb_index) {
		return session.delete("dao.ITakebackSwapDao.deleteTakebackSwap", tb_index);
	}

	@Override
	public takeback_swap selectTakebackSwap(int tb_index) {
		return session.selectOne("dao.ITakebackSwapDao.selectTakebackSwap", tb_index);
	}
	
}
