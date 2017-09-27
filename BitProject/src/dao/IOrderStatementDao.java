package dao;

import model.order_statement2;

public interface IOrderStatementDao {
	public int insertOrderStatement(order_statement2 order_statement2);	
	public order_statement2 selectOrderStatement(int os_index);

}
