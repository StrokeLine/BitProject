package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.shopping_basket_view;

@Repository
public class ShoppingBasketViewDao implements IShoppingBasketViewDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public shopping_basket_view selectShoppingBasketView(int m_index) {
		return session.selectOne("dao.IShoppingBasketViewDao.selectShoppingBasketView", m_index);
	}

	@Override
	public List<shopping_basket_view> selectAllShoppingBasketView(int m_index) {
		return session.selectList("dao.IShoppingBasketViewDao.selectAllShoppingBasketView", m_index);
	}
	
}
