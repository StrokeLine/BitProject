package dao;

import java.util.List;

import model.order_statement_view_m;

public interface IOrderStatementViewMDao {	
	public List<order_statement_view_m> selectAllOrderStatementViewM(int m_index);
	public List<order_statement_view_m> selectAllOrderStatementViewP(int p_index);
}
