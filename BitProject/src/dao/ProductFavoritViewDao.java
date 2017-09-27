package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_favorit_view;

@Repository
public class ProductFavoritViewDao implements IProductFavoritViewDao {

	@Autowired
	private SqlSession session;

	@Override
	public product_favorit_view selectProductFavoritView(int index) {
		return session.selectOne("dao.IProductFavoritViewDao.selectProductFavoritView", index);
	}

	@Override
	public List<product_favorit_view> selectAllProductFavoritView(int index) {
		return session.selectList("dao.IProductFavoritViewDao.selectAllProductFavoritView", index);
	}
	
}
