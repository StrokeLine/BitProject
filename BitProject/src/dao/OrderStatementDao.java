package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.order_statement;

@Repository
public class OrderStatementDao implements IOrderStatementDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertOrderStatement(order_statement order_statement) {		
		return session.insert("dao.IOrderStatementDao.insertOrderStatement", order_statement);
	}

	@Override
	public int deleteOrderStatement(int os_index) {
		return session.delete("dao.IOrderStatementDao.deleteOrderStatement", os_index);
	}

	@Override
	public order_statement selectOrderStatement(int os_index) {		
		return session.selectOne("dao.IOrderStatementeDao.selectOrderStatement", os_index);
	}
	
}
