package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.order_statement_view_m;

@Repository
public class OrderStatementViewMDao implements IOrderStatementViewMDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public order_statement_view_m selectOrderStatementView(int om_index) {		
		return session.selectOne("dao.IOrderStatementViewMDao.selectOrderStatementView", om_index);
	}
	
	@Override
	public List<order_statement_view_m> selectAllOrderStatementViewM(int m_index) {		
		return session.selectList("dao.IOrderStatementViewMDao.selectAllOrderStatementViewM", m_index);
	}

	@Override
	public List<order_statement_view_m> selectAllOrderStatementViewP(int p_index) {
		return session.selectList("dao.IOrderStatementViewMDao.selectAllOrderStatementViewP", p_index);
		
	}	
		

}
