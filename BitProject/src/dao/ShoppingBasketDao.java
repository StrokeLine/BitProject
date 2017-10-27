package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.shopping_basket;

@Repository
public class ShoppingBasketDao implements IShoppingBasketDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertShoppingBasket(shopping_basket shopping_basket) {
		return session.insert("dao.IShoppingBasketDao.insertShoppingBasket", shopping_basket);
	}

	@Override
	public int updateShoppingBasket(shopping_basket shopping_basket) {
		return session.update("dao.IShoppingBasketDao.updateShoppingBasket", shopping_basket);
	}

	@Override
	public int deleteShoppingBasket(int sb_index) {
		return session.delete("dao.IShoppingBasketDao.deleteShoppingBasket", sb_index);
	}

	@Override
	public shopping_basket selectShoppingBasket(int sb_index) {
		return session.selectOne("dao.IShoppingBasketDao.selectShoppingBasket", sb_index);
	}
	
	
	
}
