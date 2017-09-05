package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class tempController {
		
	
	@RequestMapping("productPage.do")
	public ModelAndView productPage() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("productPage");
		
		return mav;
	}
	
//<<<<<<< HEAD
	
	@RequestMapping("productDibs.do")
	public ModelAndView productDibs(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("productDibs");		
		return mav;		
	}
	
	@RequestMapping("productBasket.do")
	public ModelAndView productBsket(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("productBasket");		
		return mav;		
	}
	
	@RequestMapping("modifyMember.do")
	public ModelAndView modifyMember(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("modifyMember");		
		return mav;		
	}
	
	@RequestMapping("deleteMember.do")
	public ModelAndView deleteMember(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("deleteMember");		
		return mav;		
	}
	
	
//=======
	@RequestMapping("dibsCheck.do")
	public ModelAndView dibsCheck() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("dibsCheck");
		
		return mav;
	}
	
	@RequestMapping("shoppingBasketCheck.do")
	public ModelAndView shoppingBasketCheck() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("shoppingBasketCheck");
		
		return mav;
	}
//>>>>>>> branch 'master' of https://github.com/StrokeLine/BitProject
}
