package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.IProductInfoDao;
import dao.ProductInfoDao;
import model.product_info;

@Service
public class ProductService {
	
	@Autowired
	private ProductInfoDao ProductDao;
	
	public int addProduct(product_info p, MultipartFile file){
		
		int result = ProductDao.insertProductInfo(p);
		
		if( result > 0 ){
			return p.getP_index();
		} else{ 
			return 0;
		}	
	}
	
	public product_info getProduct(int p_index){
		
		return ProductDao.selectProduct(p_index);
	}
	
}
