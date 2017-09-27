package service;

import org.springframework.web.multipart.MultipartFile;

import dao.IProductInfoDao;
import model.product_info;

public class ProductService {
	
	IProductInfoDao iProductDao;
	
	public int addProduct(product_info p, MultipartFile file){
		
		int result = iProductDao.insertProductInfo(p);
		
		if( result > 0 ){
			return p.getP_index();
		} else{ 
			return 0;
		}	
	}
	
	public product_info getProduct(int p_index){
		
		return iProductDao.selectProduct(p_index);
	}
	
}
