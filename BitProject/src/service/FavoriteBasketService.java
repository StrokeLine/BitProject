package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ProductFavoriteViewDao;
import dao.ProductFavoriteDao;
import dao.ShoppingBasketDao;
import dao.ShoppingBasketViewDao;
import model.product_favorite_view;
import model.shopping_basket_view;

@Service
public class FavoriteBasketService {

	@Autowired
	private ProductFavoriteDao productFavoriteDao;
	
	@Autowired
	private ProductFavoriteViewDao productFavoritViewDao;
	
	@Autowired
	private ShoppingBasketDao shoppingBasketDao;
	
	@Autowired
	private ShoppingBasketViewDao shoppingBasketViewDao;
	
	public List<product_favorite_view> getFavoriteList(int m_index){
		return productFavoritViewDao.selectAllProductFavoriteView(m_index);
	}
	
	public List<shopping_basket_view> getShoppingBasketList(int m_index) {
		return shoppingBasketViewDao.selectAllShoppingBasketView(m_index);
	}
	
}
