package dao;

import java.util.List;

import model.product_notice_view;

public interface IProductNoticeViewDao {
	public List<product_notice_view> selectProductNoticeView(int m_index);
}
