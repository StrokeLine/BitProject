package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ProductNoticeDao;
import dao.ProductNoticeViewDao;
import dao.StoreFollowingDao;
import dao.StoreFollowingViewDao;
import dao.StoreNoticeDao;
import dao.StoreNoticeViewDao;
import model.product_notice_view;
import model.store_notice_view;

@Service
public class FollowingService {

	@Autowired
	private StoreNoticeDao storeNoticeDao;
	
	@Autowired
	private StoreNoticeViewDao storeNoticeViewDao;
	
	@Autowired
	private ProductNoticeDao productNoticeDao;
	
	@Autowired
	private ProductNoticeViewDao productNoticeViewDao;
	
	public List<product_notice_view> getProductNotice(int m_index){
		return productNoticeViewDao.selectProductNoticeView(m_index);
	}
	
	public List<store_notice_view> getStoreNotice(int m_index){
		return storeNoticeViewDao.selectAllStoreNoticeViewM(m_index);
	}
}
