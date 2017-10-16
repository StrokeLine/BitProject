package service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.ProductInfoDao;
import model.product_info;

@Service
public class ProductService {
	
	@Autowired
	private ProductInfoDao productInfoDao;
	
	// 상품 추가
	public int addProduct(product_info product_info, MultipartFile productImgFile){
		
		if(productImgFile != null){
			String path = "";
			String productImgFileName = productImgFile.getOriginalFilename();
			File myFile = new File(path + productImgFileName);
			
			try {
				productImgFile.transferTo(myFile);
				product_info.setP_imgSrc(productImgFileName);  			
			} catch (IllegalStateException e) {			
				e.printStackTrace();
			} catch (IOException e) {			
				e.printStackTrace();
			}
		}		
		if( product_info.getP_imgSrc() == null){
			product_info.setP_imgSrc("default.jpg");
		}
		
		int result = productInfoDao.insertProductInfo(product_info);		
		if( result > 0 ){
			return product_info.getP_index();
		} else{ 
			return 0;
		}	
	}	
	// 선택 상품 가져오기
	public product_info getProduct(int p_index){
		return productInfoDao.selectProduct(p_index);
	}	
	// 상품 수정
	public boolean modifyProduct(product_info product_info){
		int result = productInfoDao.updateProductInfo(product_info);
		
		if(result > 0){
			return true;
		}else{
			return false;
		}		
	}	
	// 상품 삭제
	public boolean deleteProduct(int p_index){
		int result = productInfoDao.deleteProductInfo(p_index);
		
		if(result > 0){
			return true;
		}else{
			return false;
		}
	}	
}
