package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.member_info;
import model.product_notice;
import model.seller_info;
import model.store_following;
import model.store_notice;
import model.store_notice_check;
import model.store_notice_view;
import service.FollowingService;
import service.SellerInfoService;

@Controller
public class SellerController {
	
	@Autowired
	SellerInfoService sellerInfoService;
	
	@Autowired
	FollowingService followingService;
	
	@RequestMapping("sellerMyStore")
	public ModelAndView sellerMyStore(HttpSession session) {
		ModelAndView mav = new ModelAndView();				
		int m_index = (Integer)session.getAttribute("m_index");
		seller_info sellerInfo = sellerInfoService.getSellerInfo(m_index);
		mav.addObject("seller_info_select", sellerInfo);		
		mav.setViewName("sellerMyStore");		
		return mav;
	}
	
	@RequestMapping("sellerRegForm")
	public ModelAndView sellerRegForm(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sellerReg");
		return mav;
	}
		
	@RequestMapping("sellerReg")
	public String sellerReg(HttpSession session, seller_info seller_info){
		int m_index = (Integer)session.getAttribute("m_index");
		seller_info.setM_index(m_index);		
		sellerInfoService.addSeller(seller_info);	
		return "redirect:sellerMyStore";
	}
	
	
	@RequestMapping("modifySellerForm")
	public String modifySellerForm(HttpSession session, Model model){
		int m_index = (Integer)session.getAttribute("m_index");
		seller_info seller_info = sellerInfoService.getSellerInfo(m_index);
		model.addAttribute("modifySeller", seller_info);
		return "modifySeller";
	}
	
	@RequestMapping("modifySeller")
	public String modifySeller(HttpSession session, seller_info seller_info){
		sellerInfoService.modifySeller(seller_info);
		int m_index = (Integer)session.getAttribute("m_index");
		seller_info.setM_index(m_index);
		sellerInfoService.modifySeller(seller_info);
		//seller_info sellerInfo = sellerInfoService.getSellerInfo(m_index);		
		return "redirect:sellerMyStore?m_index=" + seller_info.getM_index();
	}
	
	@RequestMapping("customerNotice")
	public ModelAndView customerNotice(HttpSession session){
		ModelAndView mav = new ModelAndView();
		int s_index = sellerInfoService.getSellerInfo((Integer)session.getAttribute("m_index")).getS_index();
		List<store_notice> notice_views = sellerInfoService.getSotreNotiViewList(s_index);
		
		if(!notice_views.isEmpty()){
			mav.addObject("notice_view_list", notice_views);
		} else {
			mav.addObject("notice_view_list", "");
		}
		
		return mav;
	}
	
	@RequestMapping("addStoreNoticePro")
	public ModelAndView addStoreNotice(HttpSession session, store_notice store_notice){
		ModelAndView mav = new ModelAndView();		
		int s_index = sellerInfoService.getSellerInfo((Integer)session.getAttribute("m_index")).getS_index();
		store_notice.setS_index(s_index);
		int sn_index = sellerInfoService.addStoreNotice(store_notice);
		
		
		if(sn_index != 0){
			sendNoticeMsg(s_index, sn_index);
		}

		mav.setViewName("redirect:customerNotice");
		return mav;
	}
	
	public void sendNoticeMsg(int s_index, int sn_index){
		List<store_following> following = followingService.getStoreFollowingUserList(s_index);
		
		if(!following.isEmpty()){
			for(store_following follower : following){
				store_notice_check notice_check = new store_notice_check();
				notice_check.setSn_index(sn_index);
				notice_check.setM_index(follower.getM_index());

				sellerInfoService.addStoreNotiCheck(notice_check);
			}
		}
	}
	
	@RequestMapping("modifyStoreNoticePro")
	public ModelAndView modifyStoreNoticePro(HttpSession session, store_notice store_notice){
		ModelAndView mav = new ModelAndView();		
		
		sellerInfoService.modifyStoreNoti(store_notice);

		mav.setViewName("redirect:customerNotice");
		return mav;
	}
	
	
	@RequestMapping(value="getStoreNotice", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody store_notice getStoreNotice(HttpSession session, String sn_index) {
		store_notice notice_view = sellerInfoService.getSotreNotiViewOne(Integer.parseInt(sn_index));

		return notice_view;
	}
	
	@RequestMapping(value="deleteStoreNoti", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int deleteStoreNoti(HttpSession session, String sn_index) {
		sellerInfoService.deleteStoreNotiCheck(Integer.parseInt(sn_index));

		return sellerInfoService.deleteStoreNotiView(Integer.parseInt(sn_index));
	}	

}
