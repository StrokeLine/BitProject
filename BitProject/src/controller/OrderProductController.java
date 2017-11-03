package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.member_info;
import model.order_statement;
import model.order_statement_view_m;
import model.product_info;
import model.shopping_basket_view;
import service.FavoriteBasketService;
import service.OrderProductService;
import service.ProductService;
import service.SellerInfoService;

@Controller
public class OrderProductController {

	@Autowired
	private FavoriteBasketService favoriteBasketService;
	
	@Autowired
	private OrderProductService orderProductService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="checkSeller", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int checkSeller(HttpSession session, int p_index) {
		int result = 0;
		int m_index = (Integer)session.getAttribute("m_index");
		
		if(m_index == productService.getProduct(p_index).getM_index()){
			result = 1;
		}
		
		return result;  
	}
	
	@RequestMapping("orderCheck")
	public ModelAndView orderCheck() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("orderCheck");		
		return mav;
	}
	
	@RequestMapping("orderPageMain")
	public ModelAndView orderPageMain(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("orderPageMain");
		return mav;
	}
	
	@RequestMapping("orderProduct")
	public ModelAndView orderProduct(HttpSession session, String[] selectList) {
		ModelAndView mav = new ModelAndView();	
		
		if(selectList == null){
			mav.setViewName("productBasket");
			return mav;
		}

		List<shopping_basket_view> basket_view_list = new ArrayList<>();
		for(int i = 0; i < selectList.length; i++) {
			basket_view_list.add(favoriteBasketService.getShoppingBasketView(Integer.parseInt(selectList[i])));
		}
		mav.addObject("orderProduct_list", basket_view_list);
		mav.setViewName("orderProduct");		
		return mav;
	}
	
	@RequestMapping(value="orderProductPro", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int orderProductPro(HttpSession session, String[] sb_index) {
		int result = 0;
		int m_index = (Integer)session.getAttribute("m_index");
		int check = 0;
		
		for(int i = 0; i < sb_index.length; i++) {
			shopping_basket_view basket_view = favoriteBasketService.getShoppingBasketView(Integer.parseInt(sb_index[i]));
			int s_index = productService.getSellerIndex(basket_view.getP_index());
			order_statement order_statement = new order_statement();
			order_statement.setS_index(s_index);
			order_statement.setM_index(m_index);
			order_statement.setP_index(basket_view.getP_index());
			order_statement.setOs_num(basket_view.getSb_num());
			order_statement.setOs_deposit_state("입금확인");
			order_statement.setOs_handling_state("입금확인");
			
			favoriteBasketService.deleteShoppingBasket(Integer.parseInt(sb_index[i]));
			orderProductService.addOrderStatement(order_statement);
			
			check++;
		}
		
		if(check == sb_index.length){
			result = 1;
		}
		
		return result;  
	}
	
	@RequestMapping("immedOrderProduct")
	public ModelAndView immedOrderProduct(HttpSession session,  int p_index, int new_num) {
		ModelAndView mav = new ModelAndView();

		product_info productInfo = productService.getProduct(p_index);
		
		List<shopping_basket_view> basket_view_list = new ArrayList<>();
		shopping_basket_view basket_view = new shopping_basket_view();
		basket_view.setM_index((Integer)session.getAttribute("m_index"));
		basket_view.setP_fee(productInfo.getP_fee());
		basket_view.setP_img(productInfo.getP_imgSrc());
		basket_view.setP_index(p_index);
		basket_view.setP_name(productInfo.getP_name());
		basket_view.setP_price(productInfo.getP_price());
		basket_view.setSb_num(new_num);
		basket_view_list.add(basket_view);

		mav.addObject("orderProduct_list", basket_view_list);
		mav.setViewName("orderProduct");		
		return mav;
	}
	
	@RequestMapping(value="immedOrderProductPro", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int immedOrderProductPro(HttpSession session, int p_index, int new_num) {
		int result = 0;
		int m_index = (Integer)session.getAttribute("m_index");
		int s_index = productService.getSellerIndex(p_index);
		
		order_statement order_statement = new order_statement();
		order_statement.setS_index(s_index);
		order_statement.setM_index(m_index);
		order_statement.setP_index(p_index);
		order_statement.setOs_num(new_num);
		order_statement.setOs_deposit_state("입금확인");
		order_statement.setOs_handling_state("입금확인");
		orderProductService.addOrderStatement(order_statement);
		
		return result;  
	}
	
	@RequestMapping("consumerContractList")
	public ModelAndView consumerContractList(HttpSession session) {
		ModelAndView mav = new ModelAndView();	
		
		List<order_statement_view_m> statement_view_list = orderProductService.getOrderStatementList((Integer)session.getAttribute("m_index"));
		
		if(!statement_view_list.isEmpty()) {
			mav.addObject("order_statement_list", statement_view_list);			
		} else {
			mav.addObject("order_statement_list", "");
		}
		
		mav.setViewName("consumerContractList");		
		return mav;
	}
	
	@RequestMapping(value="orderProductCancel", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int orderProductCancel(HttpSession session, int os_index) {
		int result = 0;

		result = orderProductService.deleteOrderStatement(os_index);
		
		return result;  
	}
	
	@RequestMapping("customerOrderDelivery")
	public ModelAndView customerOrderDelivery(HttpSession session) {
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("customerOrderDelivery");		
		return mav;
	}
	
	@RequestMapping("customerTakeBack")
	public ModelAndView customerTakeBack(HttpSession session) {
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("customerTakeBack");		
		return mav;
	}
	
	@RequestMapping("customerSwap")
	public ModelAndView customerSwap(HttpSession session) {
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("customerSwap");		
		return mav;
	}
	
}
