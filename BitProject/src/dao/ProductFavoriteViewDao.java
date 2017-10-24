package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_favorite_view;

@Repository
public class ProductFavoriteViewDao implements IProductFavoriteViewDao {

	@Autowired
	private SqlSession session;

	@Override
	public product_favorite_view selectProductFavoriteView(int pf_index) {
		return session.selectOne("dao.IProductFavoriteViewDao.selectProductFavoriteView", pf_index);
	}

	@Override
	public List<product_favorite_view> selectAllProductFavoriteView(int m_index) {
		return session.selectList("dao.IProductFavoriteViewDao.selectAllProductFavoriteView", m_index);
	}
	
}
