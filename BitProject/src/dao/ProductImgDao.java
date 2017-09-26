package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_img;

@Repository
public class ProductImgDao implements IProductImgDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertProductImg(product_img product_img) {
		return session.insert("dao.IProductImgDao.insertProductImg", product_img);
	}

	@Override
	public int updateProductImg(product_img product_img) {
		return session.update("dao.IProductImgDao.updateProductImg", product_img);
	}

	@Override
	public int deleteProductImg(int pi_index) {
		return session.delete("dao.IProductImgDao.deleteProductImg", pi_index);
	}

	@Override
	public product_img selectProductImg(int p_index) {
		return session.selectOne("dao.IProductImgDao.selectProductImg", p_index);
	}

	@Override
	public List<product_img> selectAllProductImg(int p_index) {
		return session.selectList("dao.IProductImgDao.selectAllProductImg", p_index);
	}
	
	
}
