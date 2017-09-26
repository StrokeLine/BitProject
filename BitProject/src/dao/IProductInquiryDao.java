package dao;

import java.util.List;

import model.product_inquiry;

public interface IProductInquiryDao {
	public int insertProductInquiry(product_inquiry product_inquiry);
	public int updateProductInquiry(product_inquiry product_inquiry);
	public int deleteProductInquiry(int pi_index);
	public product_inquiry selectProductInquiry(int index);
}
