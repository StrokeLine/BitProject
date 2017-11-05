package controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import model.product_assessment;
import model.product_img;
import model.product_info;
import model.product_inquiry;
import model.product_inquiry_view;
import model.product_notice;
import model.store_following;
import service.FollowingService;
import service.ProductService;
import service.SellerInfoService;


@Controller
public class ProductController {
	
	private String filePath = "c:\\Users\\bit\\git\\BitProject\\BitProject\\WebContent\\resources\\images\\product\\";
	
	@Autowired
	private ProductService productService;	
	
	@Autowired
	private SellerInfoService sellerInfoService;
	
	@Autowired
	private FollowingService followingService;
	
	@RequestMapping("managementProduct")
	public ModelAndView managementProduct(HttpSession session){
		ModelAndView mav = new ModelAndView();
		int m_index = (Integer)session.getAttribute("m_index");
		List<product_info> productInfo_list = productService.getProductList(m_index);		
		mav.addObject("product_info", productInfo_list);		
		mav.setViewName("managementProduct");	
		return mav;
	}
	
	@RequestMapping("productPage")
	public ModelAndView viewProduct(int p_index){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("product_info", productService.getProduct(p_index));
		
		List<product_assessment> product_assessments = productService.getProductAssessmentList(p_index);
		if(!product_assessments.isEmpty()){
			mav.addObject("product_assessment_list", productService.getProductAssessmentList(p_index));			
		} else {
			mav.addObject("product_assessment_list", "");
		}
		
		List<product_inquiry_view> inquiry_views = productService.getProductInquiryViewList(p_index);
		
		if(!inquiry_views.isEmpty()){
			mav.addObject("product_inquiry_views", inquiry_views);
		} else {
			mav.addObject("product_inquiry_views", "");
		}
		
		mav.setViewName("productPage");	
		return mav;	
	}
	
	@RequestMapping("addProductForm")
	public String addProductForm(){		
		return "productReg";
	}	
	
	@RequestMapping("addProduct")
	public String addProduct(HttpSession session, product_info product_info, MultipartFile main_img,  MultipartFile content_img){
		String mainFilename = main_img.getOriginalFilename();
		File imgFile = new File(filePath + mainFilename);
		
		System.out.println(mainFilename);
		
		if(mainFilename != ""){
			
			try {
				main_img.transferTo(imgFile);
				product_info.setP_imgSrc(mainFilename);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		int m_index = (Integer)session.getAttribute("m_index");
		product_info.setM_index(m_index);
		product_info.setS_index(sellerInfoService.getSellerInfo(m_index).getS_index());
		int result = productService.addProduct(product_info);
		
		String contentFilename = content_img.getOriginalFilename();
		File imgFile_sub = new File(filePath + contentFilename);
		
		if(contentFilename != ""){
			
			try {
				content_img.transferTo(imgFile_sub);
				product_img product_img = new product_img();
				product_img.setP_index(result);
				product_img.setPi_src(contentFilename);
				productService.addProductImg(product_img);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		if(result != 0){
			int s_index = sellerInfoService.getSellerInfo(m_index).getS_index();
			sendProductMsg(s_index, result);
		}
		
		return "redirect:managementProduct";
	}
	
	public void sendProductMsg(int s_index, int p_index){
		List<store_following> following = followingService.getStoreFollowingUserList(s_index);
		
		if(!following.isEmpty()){
			for(store_following follower : following){
				product_notice product_notice = new product_notice();
				product_notice.setM_index(follower.getM_index());
				product_notice.setS_index(s_index);
				product_notice.setP_index(p_index);
				
				followingService.addProductNotice(product_notice);
			}
		}
	}
	
	/*@RequestMapping("productList")
	public ModelAndView productList(int p_index){		
		ModelAndView mav = new ModelAndView();
		List<product_info> productList = productService.getProductList(p_index);
		mav.addObject("productList", productList);
		mav.setViewName("productList");		
		return mav;
	}	*/
	
	
	@RequestMapping("downloadProductImg")
	public DownloadView productImgDownload(int p_index){
		String p_imgSrcFileName = productService.getProduct(p_index).getP_imgSrc();
		
		if(p_imgSrcFileName == null){
			return null;
		}
		
		File p_imgSrcFile = new File(filePath + p_imgSrcFileName);
		return new DownloadView(p_imgSrcFile, p_imgSrcFileName);
	}	
	
	@RequestMapping("modifyProductForm")
	public String modifyProductForm(int p_index, Model model){		
		product_info product_info = productService.getProduct(p_index);
		model.addAttribute("product_info", product_info);		
		return "modifyProductForm";
	}
	
	@RequestMapping("modifyProduct")
	public String modifyProduct(product_info product_info){	
		System.out.println("modifyProduct in !!! ");
		productService.modifyProduct(product_info);		
		
		return "redirect:managementProduct?p_index=" + product_info.getP_index();
	}
	
	@RequestMapping("deleteProduct")
	public String deleteProduct(int p_index){
		productService.deleteProduct(p_index);
		return "redirect:managementProduct";
	}
	
	@RequestMapping("productList")
	public ModelAndView productList(HttpSession session, int major_num){
		ModelAndView mav = new ModelAndView();
		System.out.println("AAAAAAAAA!!!!!!");
		String major = "";
		switch (major_num) {
		case 1:
			List<product_info> product_info = productService.categoryAll();
			System.out.println("CCCCCCCCC!!!!!!");
			mav.addObject("listSelect", product_info);
			mav.setViewName("productList");		
			return mav;
			
		case 2:
			major = "사료/간식";
			break;
		case 3:
			major = "배변용품";
			break;
		case 4:
			major = "건강관리";
			break;
		case 5:
			major = "미용/목욕";
			break;
		case 6:
			major = "장난감";
			break;
		case 7:
			major = "리빙";
			break;
		case 8:
			major = "패션";
			break;
		case 9:
			major = "야외용품";
			break;

		}
		
		System.out.println("BBBBBBBBB!!!!!!");
		List<product_info> product_info = productService.categorySelect(major);
		System.out.println("CCCCCCCCC!!!!!!");
		mav.addObject("listSelect", product_info);
		mav.setViewName("productList");		
		return mav;
	}
	
	
	@RequestMapping(value="productInquiry", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int productInquiry(HttpSession session, product_inquiry product_inquiry) {
		int result = 0;
		int m_index = (Integer)session.getAttribute("m_index");

		product_inquiry.setS_index(productService.getSellerIndex(product_inquiry.getP_index()));
		product_inquiry.setM_index(m_index);
		
		result = productService.addProductInquiry(product_inquiry);
		
		return result;
	}
}