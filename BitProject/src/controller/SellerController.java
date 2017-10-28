package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.seller_info;
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
		mav.addObject("seller_info", sellerInfo);		
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
	public String customerNotice(HttpSession session){
				
		return "customerNotice";
	}

}
