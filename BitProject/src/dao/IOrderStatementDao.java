package dao;

import model.order_statement;

public interface IOrderStatementDao {
	public int insertOrderStatement(order_statement order_statement);
	public int deleteOrderStatement(int os_index);
	public order_statement selectOrderStatement(int os_index);
	
}
