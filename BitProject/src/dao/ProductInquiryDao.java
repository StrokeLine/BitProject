package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_inquiry;

@Repository
public class ProductInquiryDao implements IProductInquiryDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertProductInquiry(product_inquiry product_inquiry) {
		return session.insert("dao.IProductInquiryDao.insertProductInquiry", product_inquiry);
	}

	@Override
	public int updateProductInquiry(product_inquiry product_inquiry) {
		return session.update("dao.IProductInquiryDao.updateProductInquiry", product_inquiry);
	}

	@Override
	public int deleteProductInquiry(int pi_index) {
		return session.delete("dao.IProductInquiryDao.deleteProductInquiry", pi_index);
	}

	@Override
	public product_inquiry selectProductInquiry(int pi_index) {
		return session.selectOne("dao.IProductInquiryDao.selectProductInquiry", pi_index);
	}
}
