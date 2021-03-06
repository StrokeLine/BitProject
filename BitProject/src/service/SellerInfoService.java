package service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.SellerInfoDao;
import dao.StoreNoticeCheckDao;
import dao.StoreNoticeDao;
import dao.StoreNoticeViewDao;
import model.product_info;
import model.seller_info;
import model.store_notice;
import model.store_notice_check;
import model.store_notice_view;

@Service
public class SellerInfoService {

	@Autowired
	private SellerInfoDao sellerInfoDao;
	
	@Autowired
	private StoreNoticeViewDao storeNoticeViewDao;
	
	@Autowired
	private StoreNoticeDao storeNoticeDao;
	
	@Autowired
	private StoreNoticeCheckDao checkDao;
	
	// 판매자 등록
	public int addSeller(seller_info seller_info){
		
		/*if(s_imgSrc != null){
			String path = "c:\\Upload\\image\\";
			String s_imgSrcFileName = s_imgSrc.getOriginalFilename();
			File s_imgSrcFile = new File(path + s_imgSrcFileName);
			
			try {
				s_imgSrc.transferTo(s_imgSrcFile);
				seller_info.setS_imgSrc(s_imgSrcFileName);  			
			} catch (IllegalStateException e) {			
				e.printStackTrace();
			} catch (IOException e) {			
				e.printStackTrace();
			}
		}		
		if( seller_info.getS_imgSrc() == null){
			seller_info.setS_imgSrc("default.jpg");
		}*/
		
		int result = sellerInfoDao.insertSellerInfo(seller_info);
		
		if( result > 0){
			return seller_info.getS_index();			
		} else{
			return 0;
		}
	}
	
	// 판매자 정보 불러오기
	public seller_info getSellerInfo(int m_index){
		return sellerInfoDao.selectSellerInfo(m_index);
	}
	
	// 판매자 정보 수정
	public boolean modifySeller(seller_info seller_info){
		
		int result = sellerInfoDao.updateSellerInfo(seller_info);
		
		if(result > 0){
			return true;
		}else{
			return false;
		}		
	}
	
	// 판매자 정보 삭제
	public boolean deleteSeller(int m_index){
		int seller_info = sellerInfoDao.deleteSellerInfo(m_index);
		if(seller_info > 0){
			return true;
		}else{
			return false;
		}
	}
	
	public List<store_notice> getSotreNotiViewList(int s_index){
		return storeNoticeDao.selectAllStoreNotice(s_index);
	}
	
	public store_notice getSotreNotiViewOne(int sn_index){
		return storeNoticeDao.selectStoreNotice(sn_index);
	}
	
	public int addStoreNotice(store_notice store_notice){
		int result = 0;
		result = storeNoticeDao.insertStoreNotice(store_notice);
		if(result > 0){
			result = store_notice.getSn_index();
		}
		
		return result;
	}
	
	public int addStoreNotiCheck(store_notice_check store_notice_check){
		return checkDao.insertStoreNoticeCheck(store_notice_check);
	}
	
	public int modifyStoreNoti(store_notice store_notice){
		return storeNoticeDao.updateStoreNotice(store_notice);
	}
	
	public int deleteStoreNotiView(int sn_index){
		return storeNoticeDao.deleteStoreNotice(sn_index);
	}
	
	public int deleteStoreNotiCheck(int sn_index){
		return checkDao.deleteAllStoreNoticeCheck(sn_index);
	}
	public seller_info getStoreinfo(int s_index){
		return sellerInfoDao.getStoreinfo(s_index);
	}
}
