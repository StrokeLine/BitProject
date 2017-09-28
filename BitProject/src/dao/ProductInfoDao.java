package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_info;

@Repository
public class ProductInfoDao implements IProductInfoDao{
	
	@Autowired
	SqlSession session;

	@Override
	public int insertProductInfo(product_info product_info) {		
		return session.insert("dao.IProductInfoDao.insertProductInfo", product_info);
	}

	@Override
	public int updateProductInfo(product_info product_info) {		
		return session.update("dao.IProductInfoDao.updateProductInfo", product_info);
	}

	@Override
	public int deleteProductInfo(int p_index) {		
		return session.delete("dao.IProductInfoDao.deleteProductInfo", p_index);
	}

	@Override
	public product_info selectProduct(int p_index) {		
		return session.selectOne("dao.IProductInfoDao.selectProductInfo", p_index);
	}
	
	@Override
	public List<product_info> selectAllProductInfoP(int p_index) {		
		return session.selectList("dao.IProductInfoDao.selectAllProductP", p_index);
	}

	@Override
	public List<product_info> selectAllProductInfoH(String p_hashTag) {		
		return session.selectList("dao.IProductInfoDao.selectAllProductInfoH", p_hashTag);
	}

	@Override
	public List<product_info> selectAllProductInfoMJ(String p_major_value) {		
		return session.selectList("dao.IProductInfoDao.selectAllProductInfoMJ", p_major_value);
	}

	@Override
	public List<product_info> selectAllProductInfoMN(String p_miner_value) {		
		return session.selectList("dao.IProductInfoDao.selectAllProductInfoMN", p_miner_value);
	}
	

}