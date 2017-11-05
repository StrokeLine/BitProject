package service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.ProductAssessmentDao;
import dao.ProductImgDao;
import dao.ProductInfoDao;
import dao.ProductInquiryDao;
import dao.ProductInquiryViewDao;
import model.product_assessment;
import model.product_img;
import model.product_info;
import model.product_inquiry;
import model.product_inquiry_view;

@Service
public class ProductService {
	
	@Autowired
	private ProductInfoDao productInfoDao;
	
	@Autowired
	private ProductAssessmentDao assessmentDao;
	
	@Autowired
	private ProductInquiryViewDao inquiryViewDao;
	
	@Autowired
	private ProductInquiryDao inquiryDao;
	
	@Autowired
	private ProductImgDao productImgDao;
	
	// 상품 추가
	public int addProduct(product_info product_info){		
		
		/*if(p_imgSrc != null){
			String path = "c:\\Upload\\image\\";
			String p_imgSrcFileName = p_imgSrc.getOriginalFilename();
			File p_imgSrcFile = new File(path + p_imgSrcFileName);
			
			try {
				p_imgSrc.transferTo(p_imgSrcFile);
				product_info.setP_imgSrc(p_imgSrcFileName);  			
			} catch (IllegalStateException e) {			
				e.printStackTrace();
			} catch (IOException e) {			
				e.printStackTrace();
			}
		}		
		if( product_info.getP_imgSrc() == null){
			product_info.setP_imgSrc("default.jpg");
		}*/
		
		int result = productInfoDao.insertProductInfo(product_info);		
		if( result > 0 ){
			return product_info.getP_index();
		} else{ 
			return 0;
		}	
	}
	
	public int addProductImg(product_img product_img){
		int result = productImgDao.insertProductImg(product_img);
		
		if( result > 0){
			return product_img.getP_index();
		} else{
			return 0;
		}
	}
	
	// 선택 상품 가져오기
	public product_info getProduct(int p_index){
		return productInfoDao.selectProduct(p_index);
	}	
	
	// 개인 전체 상품 리스트
	public List<product_info> getProductList(int m_index){
		return productInfoDao.selectAllProductInfoM(m_index);
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
	
	public List<product_assessment> getProductAssessmentList(int p_index) {
		return assessmentDao.selectAllProductAssessment(p_index);
	}
	
	public List<product_inquiry_view> getProductInquiryViewList(int p_index) {
		return inquiryViewDao.selectAllProductInquiryP(p_index);
	}
	
	// p_index로 판매자 s_index 가져오기
	public int getSellerIndex(int p_index) {
		return productInfoDao.selectProduct(p_index).getS_index();
	}
	
	// 카테고리별 상품 리스트
	public List<product_info> categorySelect(String major){
		return productInfoDao.categorySelect(major);
	}
	
	public List<product_info> categoryAll(){
		return productInfoDao.categoryAll();
	}
	
	public int addProductInquiry(product_inquiry product_inquiry){
		return inquiryDao.insertProductInquiry(product_inquiry);
	}
	
	public List<product_info> getSellerProductList(int s_index){
		return productInfoDao.selectAllProductInfoS(s_index);
	}
}
