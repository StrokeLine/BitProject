package dao;

import java.util.List;

import model.product_favorite_view;

public interface IProductFavoriteViewDao {
	public product_favorite_view selectProductFavoriteView(int pf_index);
	public List<product_favorite_view> selectAllProductFavoriteView(int m_index);
}
