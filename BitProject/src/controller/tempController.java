package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class tempController {
		
	
	@RequestMapping("main.do")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main");
		
		return mav;
	}
	
	@RequestMapping("loginForm.do")
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("loginForm");
		
		return mav;
	}
	
	@RequestMapping("joinForm.do")
	public ModelAndView joinForm(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("joinForm");
		
		return mav;
	}
	
	@RequestMapping("productPage.do")
	public ModelAndView productPage() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("productPage");
		
		return mav;
	}
	
	@RequestMapping("productReg.do")
	public ModelAndView productReg() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("productReg");
		
		return mav;
	}
	
	@RequestMapping("sellerMyStore.do")
	public ModelAndView sellerMyStore() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("sellerMyStore");
		
		return mav;
	}
	
	@RequestMapping("sellerMyPage.do")
	public ModelAndView sellerMyPage() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("sellerMyPage");
		
		return mav;
	}
	
	@RequestMapping("modifyProduct.do")
	public ModelAndView modifyProduct() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("modifyProduct");
		
		return mav;
	}
	
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
	
	@RequestMapping("myPage.do")
	public ModelAndView myPage(String myPageCtrl) {
		ModelAndView mav=new ModelAndView();
		if(myPageCtrl!=null){
			mav.addObject("myPageCtrl", myPageCtrl);
		}
		mav.setViewName("myPage");
		return mav;
	}
	
	@RequestMapping("myPageCtrl.do")
	public String myPageCtrl(String myPageNum) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("myPageNum", myPageNum);
		return "myPageCtrl";
	}
	
	@RequestMapping("fnPageCtrl.do")
	public String fnPageCtrl(String fnPageNum) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("fnPageNum", fnPageNum);
		return "fnPageCtrl";
	}
	
	@RequestMapping("qnaPageCtrl.do")
	public String qnaPageCtrl(String qnaPageNum) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("qnaPageNum", qnaPageNum);
		return "qnaPageCtrl";
	}
	
}
