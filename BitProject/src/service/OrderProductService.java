package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.OrderStatementDao;
import dao.OrderStatementViewMDao;
import dao.OrderStatementViewSDao;
import model.order_statement;
import model.order_statement_view_m;
import model.order_statement_view_s;

@Service
public class OrderProductService {

	@Autowired
	private OrderStatementDao orderStatementDao;
	
	@Autowired
	private OrderStatementViewMDao statementViewMDao;
	
	@Autowired
	private OrderStatementViewSDao statementViewSDao; 
	
	public int addOrderStatement(order_statement order_statement){
		return orderStatementDao.insertOrderStatement(order_statement);
	}
	
	public List<order_statement_view_m> getOrderStatementList(int m_index) {
		return statementViewMDao.selectAllOrderStatementViewM(m_index);
	}
	
	public int deleteOrderStatement(int os_index) {
		return orderStatementDao.deleteOrderStatement(os_index);
	}
	
	public List<order_statement_view_s> getStoreOrderStatementList(int s_index){
		return statementViewSDao.selectAllOrderStatementViewS(s_index);
	}
}
