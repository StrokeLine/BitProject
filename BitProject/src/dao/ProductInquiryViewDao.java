package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_inquiry_view;

@Repository
public class ProductInquiryViewDao implements IProductInquiryViewDao {

	@Autowired
	private SqlSession session;

	@Override
	public List<product_inquiry_view> selectAllProductInquiryS(int s_index) {
		return session.selectList("dao.IProductInquiryView.selectAllProductInquiryS", s_index);
	}

	@Override
	public List<product_inquiry_view> selectAllProductInquiryM(int m_index) {
		return session.selectList("dao.IProductInquiryView.selectAllProductInquiryM", m_index);
	}

	@Override
	public List<product_inquiry_view> selectAllProductInquiryP(int p_index) {
		return session.selectList("dao.IProductInquiryView.selectAllProductInquiryP", p_index);
	}
	
}
