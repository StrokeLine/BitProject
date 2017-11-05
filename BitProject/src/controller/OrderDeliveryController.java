package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.order_statement_view_s;
import service.OrderProductService;
import service.SellerInfoService;

@Controller
public class OrderDeliveryController {
	
	
	@Autowired
	private OrderProductService orderProductService;
	
	@Autowired
	private SellerInfoService sellerInfo;
	
	@RequestMapping("customerOrderDelivery")
	public ModelAndView customerOrderDelivery(HttpSession session) {
		ModelAndView mav = new ModelAndView();	
		int m_index = (Integer)session.getAttribute("m_index");
		List<order_statement_view_s> os_seller = orderProductService.getStoreOrderStatementList(sellerInfo.getSellerInfo(m_index).getS_index());
		
		if(!os_seller.isEmpty()){
			System.out.println(os_seller.toString());
			mav.addObject("os_seller_list", os_seller);
		} else {
			mav.addObject("os_seller_list", "");
		}
	
		mav.setViewName("customerOrderDelivery");		
		return mav;
	}
	

}
