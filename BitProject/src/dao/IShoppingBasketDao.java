package dao;

import model.shopping_basket;

public interface IShoppingBasketDao {
	public int insertShoppingBasket(shopping_basket shopping_basket);
	public int updateShoppingBasket(shopping_basket shopping_basket);
	public int deleteShoppingBasket(int sb_index);
	public shopping_basket insertShoppingBasket(int sb_index);
}
