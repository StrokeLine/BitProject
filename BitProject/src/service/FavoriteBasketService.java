package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ProductFavoriteViewDao;
import dao.ProductFavoriteDao;
import dao.ShoppingBasketDao;
import dao.ShoppingBasketViewDao;
import model.product_favorite;
import model.product_favorite_view;
import model.shopping_basket;
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
	
	public int addavorite(product_favorite product_favorite){
		return productFavoriteDao.insertProductFavorite(product_favorite);
	}
	
	public List<product_favorite_view> getFavoriteList(int m_index){
		return productFavoritViewDao.selectAllProductFavoriteView(m_index);
	}
	
	public List<shopping_basket_view> getShoppingBasketList(int m_index) {
		return shoppingBasketViewDao.selectAllShoppingBasketView(m_index);
	}
	
	public int setShoppingBasket(shopping_basket shopping_basket) {
		return shoppingBasketDao.insertShoppingBasket(shopping_basket);
	}
	
	public shopping_basket_view getShoppingBasketView(int sb_index){
		return shoppingBasketViewDao.selectShoppingBasketViewSB(sb_index);
	}
	
	public shopping_basket getShoppingBasket(int sb_index){
		return shoppingBasketDao.selectShoppingBasket(sb_index);
	}
	
	public product_favorite getFavorite(int pf_index){
		return productFavoriteDao.selectProductFavorite(pf_index);
	}
	
	public int updateBasketNum(shopping_basket shopping_basket) {
		return shoppingBasketDao.updateShoppingBasket(shopping_basket);
	}
	
	public int deleteFavorite(int pf_index) {
		return productFavoriteDao.deleteProductFavorite(pf_index);
	}
	
	public int deleteShoppingBasket(int sb_index) {
		return shoppingBasketDao.deleteShoppingBasket(sb_index);
	}
	
}
