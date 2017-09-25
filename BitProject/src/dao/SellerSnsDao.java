package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.seller_sns;

@Repository
public class SellerSnsDao implements ISellerSnsDao {
	@Autowired
	private SqlSession session;

	@Override
	public int insertSellerSns(seller_sns seller_sns) {
		return session.insert("dao.ISellerSnsDao.insertSellerSns", seller_sns);
	}

	@Override
	public int updateSellerSns(seller_sns seller_sns) {
		return session.update("dao.ISellerSnsDao.updateSellerSns", seller_sns);
	}

	@Override
	public int deleteSellerSns(int pet_index) {
		return session.delete("dao.ISellerSnsDao.deleteSellerSns",  pet_index);
	}

	@Override
	public seller_sns selectSellerSns(int pet_index) {
		return session.selectOne("dao.ISellerSnsDao.selectSellerSns", pet_index);
	}
}
