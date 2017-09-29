package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.order_statement_view_s;

@Repository
public class OrderStatementViewSDao implements IOrderStatementViewSDao{
	
	@Autowired
	private SqlSession session;	
	
	@Override
	public order_statement_view_s selectOrderStatementView(int os_index) {
		return session.selectOne("dao.IOrderStatementViewSDao.selectOrderStatementView", os_index);
	}

	@Override
	public List<order_statement_view_s> selectAllOrderStatementViewS(int s_index) {		
		return session.selectList("dao.IOrderStatementViewSDao.selectAllOrderStatementViewS", s_index);
	}

	@Override
	public List<order_statement_view_s> selectAllOrderStatementViewM(int m_index) {
		return session.selectList("dao.IOrderStatementViewSDao.selectAllOrderStatementViewM", m_index);
	}

	@Override
	public List<order_statement_view_s> selectAllOrderStatementViewP(int p_index) {
		return session.selectList("dao.IOrderStatementViewSDao.selectAllOrderStatementViewP", p_index);
	}	

}
