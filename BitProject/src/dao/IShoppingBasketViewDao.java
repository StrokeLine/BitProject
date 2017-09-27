package dao;

import java.util.List;

import model.shopping_basket_view;

public interface IShoppingBasketViewDao {
	public shopping_basket_view selectShoppingBasketView(int m_index);
	public List<shopping_basket_view> selectAllShoppingBasketView(int m_index);
}
