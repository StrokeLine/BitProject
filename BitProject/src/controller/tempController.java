package controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.member_info;
import model.seller_info;
import service.CustomerCenterInquiryService;
import service.MapService;
import service.MemberInfoService;
import model.customer_center_inquiry;
import service.MemberInfoService;

@Controller
public class tempController {
	
	@Autowired
	private MemberInfoService memberService;
	
	@Autowired
	private MapService mapService;
	
	private CustomerCenterInquiryService customerCenterInquiryService;
	
	@RequestMapping("container")
	public ModelAndView NewFile() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("container");
		
		return mav;
	}
	
	@RequestMapping("main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main");
		
		return mav;
	}
	
	@RequestMapping("loginForm")
	public ModelAndView loginForm(member_info member_info) {
		ModelAndView mav = new ModelAndView();
		if(member_info.getM_email() != null){
			memberService.addMember(member_info);	
		}
		mav.setViewName("loginForm");
		
		return mav;
	}
	
	@RequestMapping("loginPro")
	public ModelAndView loginPro(HttpSession session, String m_email, String m_password) {
		System.out.println(m_email + " " + m_password);
		ModelAndView mav = new ModelAndView();
		member_info member_info = memberService.emailCheck(m_email);
		if(member_info != null) {
			if(member_info.getM_password().equals(m_password)){
				mav.addObject("result", 1);
				mav.addObject("m_index", member_info.getM_index());
				mav.setViewName("mainLogin");
				session.setAttribute("m_index", member_info.getM_index());
				System.out.println("login success !!!");
			} else {
				mav.addObject("result", 0);
				mav.setViewName("loginForm");
				System.out.println("diff passwd !!!");
			}
		} else {
			mav.addObject("result", -1);
			mav.setViewName("loginForm");
			System.out.println("diff email !!!");
		}
		
		return mav;
	}
	
	@RequestMapping("logoutPro")
	public ModelAndView logoutPro(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.removeAttribute("m_index");
		mav.setViewName("main");
		return mav;
	}
	@RequestMapping("joinForm")
	public ModelAndView joinForm(member_info member_info){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("joinForm");
		
		return mav;
	}
	
	@RequestMapping("petInfo")
	public ModelAndView petInfo() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("petInfo");
		
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
/*	
	@RequestMapping("myPage")
	public ModelAndView myPage(String myPageCtrl) {
		ModelAndView mav=new ModelAndView();
		if(myPageCtrl!=null){
			mav.addObject("myPageCtrl", myPageCtrl);
		}
		mav.setViewName("myPage");
		return mav;
	}
	*/
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
	
	@RequestMapping("sellerReg")
	public ModelAndView sellerReg() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("sellerReg");		
		return mav;
	}	
	
	
	@RequestMapping("orderCheck")
	public ModelAndView orderCheck() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("orderCheck");		
		return mav;
	}
	
	@RequestMapping("memberInfo")
	public ModelAndView memberInfo(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int m_index = (Integer)session.getAttribute("m_index");
		member_info m = memberService.getMember(m_index);
		mav.addObject("member", m);
		mav.setViewName("memberInfo");		
		return mav;
	}
	
	@RequestMapping("followingNoti")
	public ModelAndView followingNoti() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("followingNoti");		
		return mav;
	}
	@RequestMapping("consumerContractList")
	public ModelAndView consumerContractList() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("consumerContractList");		
		return mav;
	}
	@RequestMapping("qAndA")
	public ModelAndView qAndA() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("qAndA");		
		return mav;
	}
	@RequestMapping("customerCenterInquiry")
	public ModelAndView customerCenter(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int m_index = (Integer)session.getAttribute("m_index");
		System.out.println("getAllCustomerCenterInquiry start !!!");
		List<customer_center_inquiry> inquiry_list = customerCenterInquiryService.getAllCustomerCenterInquiry(m_index);
		mav.addObject("customerCenterInquiry", inquiry_list); 
		System.out.println("getAllCustomerCenterInquiry Done !!!");
		mav.setViewName("customerCenter");		
		return mav;		
	}	
	@RequestMapping("myPageMain")
	public ModelAndView myPageMain() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("myPageMain");		
		return mav;
	}
	@RequestMapping("myPageMenu")
	public ModelAndView myPageMenu() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("myPageMenu");		
		return mav;
	}
	@RequestMapping("qAndAMenu")
	public ModelAndView qAndAMenu() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("qAndAMenu");		
		return mav;
	}
	@RequestMapping("followingNotiMenu")
	public ModelAndView followingNotiMenu() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("followingNotiMenu");		
		return mav;
	}
	@RequestMapping("qAndAMain")
	public ModelAndView qAndAMain() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("qAndAMain");		
		return mav;
	}
	@RequestMapping("followingNotiMain")
	public ModelAndView followingNotiMain() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("followingNotiMain");		
		return mav;
	}
	@RequestMapping("qAndAProduct")
	public ModelAndView qAndAProduct() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("qAndAProduct");		
		return mav;
	}
	@RequestMapping("qAndAStore")
	public ModelAndView qAndAStore() {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("qAndAStore");		
		return mav;
	}
	@RequestMapping("addCustomerCenterInquiry")
	public String addCustomerCenterInquiry(customer_center_inquiry customer_center_inquiry){
		customerCenterInquiryService.addCustomerCenterInquiry(customer_center_inquiry);
		return "redirect:customerCenterInquiry";
	}	
	
	@RequestMapping("mapTest")
	public ModelAndView mapTest() {
		ModelAndView mav = new ModelAndView();
		List<seller_info> store_list = mapService.getAllStore();
		mav.addObject("store_list", store_list);
		mav.setViewName("mapTest");		
		return mav;
	}
}
