package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.seller_info;
import model.store_notice_view;
import service.SellerInfoService;

@Controller
public class SellerController {
	
	@Autowired
	SellerInfoService sellerInfoService;
	
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
	public String modifySellerForm(int m_index, Model model){
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
		List<store_notice_view> notice_views = sellerInfoService.getSotreNotiViewList(s_index);
		
		if(!notice_views.isEmpty()){
			mav.addObject("notice_view_list", notice_views);
		} else {
			mav.addObject("notice_view_list", "");
		}
		
		return mav;
	}

}
