package dao;

import org.apache.ibatis.session.SqlSession;

import model.order_statement2;

public class OrderStatementDao implements IOrderStatementDao {
	
	private SqlSession session;

	@Override
	public int insertOrderStatement(order_statement2 order_statement2) {		
		return session.insert("dao.IOrderStatementDao.insertOrderStatement", order_statement2);
	}

	@Override
	public order_statement2 selectOrderStatement(int os_index) {		
		return session.selectOne("dao.IOrderStatementeDao.selectOrderStatement", os_index);
	}
	
}
