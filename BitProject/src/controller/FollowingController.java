package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.annotation.JsonAppend.Attr;

import model.product_notice_view;
import model.seller_info;
import model.store_notice_view;
import service.FollowingService;
import service.SellerInfoService;

@Controller
public class FollowingController {

	
	@Autowired
	private FollowingService followingService;
	
	@Autowired
	private SellerInfoService sellerInfoService;
	
	
	@RequestMapping("followingNoti")
	public ModelAndView followingNoti() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("followingNoti");		
		return mav;
	}
	
	@RequestMapping("followingNotiMenu")
	public ModelAndView followingNotiMenu() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("followingNotiMenu");		
		return mav;
	}
		
	@RequestMapping("followingNotiMain")
	public ModelAndView followingNotiMain() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("followingNotiMain");		
		return mav;
	}
	
	@RequestMapping("followingNotiProduct")
	public ModelAndView followingNotiProduct(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<product_notice_view> notice_view_list = followingService.getProductNotice((Integer)session.getAttribute("m_index"));
		
		if(!notice_view_list.isEmpty()) {
			mav.addObject("notice_view_list", notice_view_list);
		} else {
			mav.addObject("notice_view_list", "");
		}
		
		return mav;
	}
	
	@RequestMapping("interestStoreNoti")
	public ModelAndView interestStoreNoti(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<store_notice_view> notice_view_list = followingService.getStoreNotice((Integer)session.getAttribute("m_index"));
		
		if(!notice_view_list.isEmpty()) {
			mav.addObject("notice_view_list", notice_view_list);
		} else {
			mav.addObject("notice_view_list", "");
		}
		
		mav.setViewName("interestStoreNoti");
		
		return mav;
	}
	
	@RequestMapping("followingNotiStore")
	public ModelAndView followingNotiStore(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_index = (Integer)session.getAttribute("m_index");
		seller_info sellerInfo = sellerInfoService.getSellerInfo(m_index);
		mav.addObject("seller_info_select", sellerInfo);
		
		List<store_notice_view> notice_view_list = followingService.getStoreNotice((Integer)session.getAttribute("m_index"));
		
		if(!notice_view_list.isEmpty()){
			mav.addObject("noticeViewList", notice_view_list);
			mav.setViewName("followingNotiStore");
		}
				
		return mav;
	}
}
