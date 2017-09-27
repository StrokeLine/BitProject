package dao;

import java.util.List;

import model.product_favorite;

public interface IProductFavoriteDao {
	public int insertProductFavorite(product_favorite product_favorite);
	public int deleteProductFavorite(product_favorite product_favorite);
	public product_favorite selectProductFavorite(int index);
	public List<product_favorite> selectAllProductFavorite(int index);
}
