package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SellerInfoDao;
import model.seller_info;

@Service
public class MapService {

	@Autowired
	private SellerInfoDao sellerInfoDao; 
	
	public List<seller_info> getAllStore() {
		return sellerInfoDao.selectAllSellerInfo();
	}
}
