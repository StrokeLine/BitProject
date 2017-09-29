package dao;

import java.util.List;

import model.order_statement_view_s;

public interface IOrderStatementViewSDao {
	public order_statement_view_s selectOrderStatementView(int os_index);
	public List<order_statement_view_s> selectAllOrderStatementViewS(int s_index);
	public List<order_statement_view_s> selectAllOrderStatementViewM(int m_index);
	public List<order_statement_view_s> selectAllOrderStatementViewP(int p_index);

}
