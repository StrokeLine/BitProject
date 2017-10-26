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
	public int deleteProductFavorite(int pf_index) {
		return session.delete("dao.IProductFavoriteDao.deleteProductFavorite", pf_index);
	}

	@Override
	public product_favorite selectProductFavorite(int pf_index) {
		return session.selectOne("dao.IProductFavoriteDao.selectProductFavorite", pf_index);
	}
	
}
