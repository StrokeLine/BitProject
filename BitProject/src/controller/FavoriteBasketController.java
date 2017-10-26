package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.product_favorite;
import model.product_favorite_view;
import model.shopping_basket;
import model.shopping_basket_view;
import service.FavoriteBasketService;

@Controller
public class FavoriteBasketController {
	
	@Autowired
	private FavoriteBasketService favoriteBasketService;
	
	@RequestMapping("productFavorite")
	public ModelAndView productDibs(HttpSession session){
		ModelAndView mav = new ModelAndView();
		List<product_favorite_view> product_favorite_list = favoriteBasketService.getFavoriteList((Integer)session.getAttribute("m_index"));
		if(!product_favorite_list.isEmpty()) {
			mav.addObject("product_favorite_list", product_favorite_list);
		} else {
			mav.addObject("product_favorite_list", "");
		}
		mav.setViewName("productFavorite");		
		return mav;		
	}
	
	@RequestMapping("productBasket")
	public ModelAndView productBsket(HttpSession session){
		ModelAndView mav = new ModelAndView();
		
		List<shopping_basket_view> shopping_basket_list = favoriteBasketService.getShoppingBasketList((Integer)session.getAttribute("m_index"));
		
		if(!shopping_basket_list.isEmpty()){
			mav.addObject("shopping_basket_list", shopping_basket_list);
		} else {
			mav.addObject("shopping_basket_list", "");
		}
		
		mav.setViewName("productBasket");		
		return mav;		
	}
	
	@RequestMapping(value="updateBasketNum", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int updateBasketNum(HttpSession session, int sb_index, int sb_num) {
		int result = 0;
		
		shopping_basket shopping_basket = favoriteBasketService.getShoppingBasket(sb_index);
		
		shopping_basket.setSb_num(sb_num);
		
		result = favoriteBasketService.updateBasketNum(shopping_basket);

		return result;  
	}
	
	@RequestMapping(value="deleteFavorite", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int deleteFavorite(HttpSession session, int pf_index) {
		int result = 0;
		
		result = favoriteBasketService.deleteFavorite(pf_index);

		return result;  
	}
	
	@RequestMapping(value="deleteShoppingBasket", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int deleteShoppingBasket(HttpSession session, int sb_index) {
		int result = 0;
		
		result = favoriteBasketService.deleteShoppingBasket(sb_index);

		return result;  
	}
	
	@RequestMapping(value="moveOnBasket", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int moveOnBasket(HttpSession session, int pf_index) {
		int result = 1;
		product_favorite product_favorite = favoriteBasketService.getFavorite(pf_index);
		
		shopping_basket shopping_basket = new shopping_basket();
		shopping_basket.setM_index((Integer) session.getAttribute("m_index"));
		shopping_basket.setP_index(product_favorite.getP_index());
		shopping_basket.setSb_num(1);
		
		result = favoriteBasketService.setShoppingBasket(shopping_basket);

		return result;  
	}
	
	@RequestMapping(value="getPrice", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody shopping_basket_view getPrice(HttpSession session, int sb_index) {
		shopping_basket_view basket_view = favoriteBasketService.getShoppingBasketView(sb_index);
		
		return basket_view;  
	}
	
}
