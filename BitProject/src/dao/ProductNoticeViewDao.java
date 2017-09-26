package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_notice_view;

@Repository
public class ProductNoticeViewDao implements IProductNoticeViewDao {

	@Autowired
	private SqlSession session;

	@Override
	public List<product_notice_view> selectProductNoticeView(int m_index) {
		return session.selectList("dao.IProductNoticeViewDao.selectProductNoticeView", m_index);
	}
}
