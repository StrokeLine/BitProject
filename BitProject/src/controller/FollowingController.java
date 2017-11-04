package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.annotation.JsonAppend.Attr;

import model.product_notice_view;
import model.seller_info;
import model.store_following;
import model.store_notice_view;
import service.FollowingService;
import service.SellerInfoService;

@Controller
public class FollowingController {

	
	@Autowired
	private FollowingService followingService;
	
	@Autowired
	private SellerInfoService sellerInfoService;
	
	
	@RequestMapping(value="storeFollowing", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int storeFollowing(HttpSession session, int s_index) {
		int result = 0;
		
		store_following following = new store_following();
		following.setM_index((Integer)session.getAttribute("m_index"));
		following.setS_index(s_index);
		
		result = followingService.setStoreFollowing(following);
		
		return result;
	}
	
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
		
		if(notice_view_list != null) {
			mav.addObject("notice_view_list", notice_view_list);
		} else {
			mav.addObject("notice_view_list", "");
		}
		
		return mav;
	}
	
	@RequestMapping("followingNotiStore")
	public ModelAndView followingNotiStore(HttpSession session, int s_index) {
		ModelAndView mav = new ModelAndView();
		
		seller_info sellerInfo = sellerInfoService.getStoreinfo(s_index);
		mav.addObject("seller_info_select", sellerInfo);
		
		List<store_notice_view> notice_view_list = followingService.getSellerNotice(s_index);
		
		if(!notice_view_list.isEmpty()){
			mav.addObject("noticeViewList", notice_view_list);
			mav.setViewName("followingNotiStore");
		}
		
		return mav;
	}
	
	@RequestMapping("interestStoreNoti")
	public ModelAndView interestStoreNoti(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		List<store_notice_view> notice_view_list = followingService.getStoreNotice((Integer)session.getAttribute("m_index"));
		
		if(!notice_view_list.isEmpty()){
			mav.addObject("notice_view_list", notice_view_list);
		} else {
			mav.addObject("notice_view_list");
		}
		
		mav.setViewName("interestStoreNoti");
		
		return mav;
	}

}