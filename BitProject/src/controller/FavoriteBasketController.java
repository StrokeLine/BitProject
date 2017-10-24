package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.product_favorite_view;
import service.FavoriteBasketService;

@Controller
public class FavoriteBasketController {
	
	@Autowired
	private FavoriteBasketService favoriteBasketService;
	
	@RequestMapping("productFavorite")
	public ModelAndView productDibs(HttpSession session){
		ModelAndView mav = new ModelAndView();
		List<product_favorite_view> product_favorite_list = favoriteBasketService.getFavoriteList((Integer)session.getAttribute("m_index"));
		if(product_favorite_list != null) {
			mav.addObject("product_favorite_list", product_favorite_list);
		}
		mav.setViewName("productFavorite");		
		return mav;		
	}
	
	@RequestMapping("productBasket")
	public ModelAndView productBsket(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("productBasket");		
		return mav;		
	}
}
