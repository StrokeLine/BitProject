package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class tempController {
		
	
	@RequestMapping("main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main");
		
		return mav;
	}
	
	@RequestMapping("loginForm")
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("loginForm");
		
		return mav;
	}
	
	@RequestMapping("joinForm")
	public ModelAndView joinForm(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("joinForm");
		
		return mav;
	}
	
	@RequestMapping("idFind")
	public ModelAndView idFind(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("idFind");
		
		return mav;
	}
	
	@RequestMapping("pwFind")
	public ModelAndView pwFind(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("pwFind");
		
		return mav;
	}
	
	@RequestMapping("mainLogin")
	public ModelAndView mainLogin(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("mainLogin");
		
		return mav;
	}
	
	@RequestMapping("productPage")
	public ModelAndView productPage() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("productPage");
		
		return mav;
	}
	
	@RequestMapping("productReg")
	public ModelAndView productReg() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("productReg");
		
		return mav;
	}
	
	@RequestMapping("sellerMyStore")
	public ModelAndView sellerMyStore() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("sellerMyStore");
		
		return mav;
	}
	
	@RequestMapping("sellerMyPage")
	public ModelAndView sellerMyPage() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("sellerMyPage");
		
		return mav;
	}
	
	@RequestMapping("modifyProduct")
	public ModelAndView modifyProduct() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("modifyProduct");
		
		return mav;
	}
	
	@RequestMapping("productDibs")
	public ModelAndView productDibs(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("productDibs");		
		return mav;		
	}
	
	@RequestMapping("productBasket")
	public ModelAndView productBsket(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("productBasket");		
		return mav;		
	}
	
	@RequestMapping("modifyMember")
	public ModelAndView modifyMember(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("modifyMember");		
		return mav;		
	}
	
	@RequestMapping("deleteMember")
	public ModelAndView deleteMember(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("deleteMember");		
		return mav;		
	}

	@RequestMapping("dibsCheck")
	public ModelAndView dibsCheck() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("dibsCheck");
		
		return mav;
	}
	
	@RequestMapping("shoppingBasketCheck")
	public ModelAndView shoppingBasketCheck() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("shoppingBasketCheck");
		
		return mav;
	}
	
	@RequestMapping("myPage")
	public ModelAndView myPage(String myPageCtrl) {
		ModelAndView mav=new ModelAndView();
		if(myPageCtrl!=null){
			mav.addObject("myPageCtrl", myPageCtrl);
		}
		mav.setViewName("myPage");
		return mav;
	}
	
	@RequestMapping("myPageCtrl")
	public String myPageCtrl(String myPageNum) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("myPageNum", myPageNum);
		return "myPageCtrl";
	}
	
	@RequestMapping("fnPageCtrl")
	public String fnPageCtrl(String fnPageNum) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("fnPageNum", fnPageNum);
		return "fnPageCtrl";
	}
	
	@RequestMapping("qnaPageCtrl")
	public String qnaPageCtrl(String qnaPageNum) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("qnaPageNum", qnaPageNum);
		return "qnaPageCtrl";
	}
	
	@RequestMapping("followingNotiProduct")
	public String followingNotiProduct() {
		return "followingNotiProduct";
	}
	
	@RequestMapping("followingNotiStore")
	public String followingNotiStore() {
		return "followingNotiStore";
	}
	
	@RequestMapping("orderProduct")
	public ModelAndView orderProduct() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("orderProduct");		
		return mav;
	}
}
