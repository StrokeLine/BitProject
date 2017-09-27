package dao;

import java.util.List;

import model.product_inquiry_view;

public interface IProductInquiryViewDao {
	public List<product_inquiry_view> selectAllProductInquiryS(int s_index);
	public List<product_inquiry_view> selectAllProductInquiryM(int m_index);
	public List<product_inquiry_view> selectAllProductInquiryP(int p_index);
}
