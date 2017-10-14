package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.seller_info;

@Repository
public class SellerInfoDao implements ISellerInfoDao {
	@Autowired
	private SqlSession session;

	@Override
	public int insertSellerInfo(seller_info seller_info) {
		return session.insert("dao.ISellerInfoDao.insertSellerInfo", seller_info);
	}

	@Override
	public int updateSellerInfo(seller_info seller_info) {
		return session.update("dao.ISellerInfoDao.updateSellerInfo", seller_info);
	}

	@Override
	public int deleteSellerInfo(int s_index) {
		return session.delete("dao.ISellerInfoDao.deleteSellerInfo", s_index);
	}
	
	@Override
	public seller_info selectSellerInfo(int s_index) {
		return session.selectOne("dao.ISellerInfoDao.selectSellerInfo", s_index);
	}

	@Override
	public List<seller_info> selectAllSellerInfo() {
		return session.selectList("dao.ISellerInfoDao.selectAllSellerInfo");
	}
	
	
	
}
