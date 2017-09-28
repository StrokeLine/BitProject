package dao;

import org.apache.ibatis.session.SqlSession;

import model.order_statement;

public class OrderStatementDao implements IOrderStatementDao {
	
	private SqlSession session;

	@Override
	public int insertOrderStatement(order_statement order_statement) {		
		return session.insert("dao.IOrderStatementDao.insertOrderStatement", order_statement);
	}

	@Override
	public order_statement selectOrderStatement(int os_index) {		
		return session.selectOne("dao.IOrderStatementeDao.selectOrderStatement", os_index);
	}
	
}
