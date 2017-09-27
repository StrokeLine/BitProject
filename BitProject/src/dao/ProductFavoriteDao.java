package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_favorite;

@Repository
public class ProductFavoriteDao implements IProductFavoriteDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertProductFavorite(product_favorite product_favorite) {
		return session.insert("dao.IProductFavoriteDao.insertProductFavorite", product_favorite);
	}

	@Override
	public int deleteProductFavorite(product_favorite product_favorite) {
		return session.delete("dao.IProductFavoriteDao.deleteProductFavorite", product_favorite);
	}

	@Override
	public product_favorite selectProductFavorite(int index) {
		return session.selectOne("dao.IProductFavoriteDao.selectProductFavorite", index);
	}

	@Override
	public List<product_favorite> selectAllProductFavorite(int index) {
		return session.selectList("dao.IProductFavoriteDao.selectAllProductFavorite", index);
	}
	
}
