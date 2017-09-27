package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_notice;

@Repository
public class ProductNoticeDao implements IProductNoticeDao {

	@Autowired
	private SqlSession session;

	@Override
	public int insertProductNotice(product_notice product_notice) {
		return session.insert("dao.IProductNoticeDao.insertProductNotice", product_notice);
	}

	@Override
	public int deleteProductNotice(int pn_index) {
		return session.delete("dao.IProductNoticeDao.deleteProductNotice", pn_index);
	}

	@Override
	public product_notice selectProductNotice(int pn_index) {
		return session.selectOne("dao.IProductNoticeDao.selectProductNotice", pn_index);
	}
	
}
