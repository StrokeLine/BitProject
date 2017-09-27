package dao;

import java.util.List;

import model.product_favorit_view;

public interface IProductFavoritViewDao {
	public product_favorit_view selectProductFavoritView(int index);
	public List<product_favorit_view> selectAllProductFavoritView(int index);
}
