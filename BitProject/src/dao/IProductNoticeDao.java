package dao;

import model.product_notice;

public interface IProductNoticeDao {
	public int insertProductNotice(product_notice product_notice);
	public int deleteProductNotice(int pn_index);
	public product_notice selectProductNotice(int pn_index);
}
