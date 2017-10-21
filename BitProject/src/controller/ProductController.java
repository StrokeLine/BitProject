package controller;

import java.io.File;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import model.product_info;
import service.ProductService;


@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;	
	
	@RequestMapping("managementProduct")
	public ModelAndView managementProduct(HttpSession session){
		ModelAndView mav = new ModelAndView();
		int m_index = (Integer)session.getAttribute("m_index");
		List<product_info> productInfo_list = productService.getProductList(m_index);
		mav.addObject("managementProduct", productInfo_list);
		mav.setViewName("managementProduct");	
		return mav;
	}
	
	@RequestMapping("viewProduct")
	public ModelAndView viewProduct(int p_index){
		ModelAndView mav = new ModelAndView();
		mav.addObject("product_info", productService.getProduct(p_index));
		mav.setViewName("managementProduct");	
		return mav;	
	}
	
	@RequestMapping("addProductForm")
	public String addProductForm(){		
		return "productReg";
	}	
	
	/*@RequestMapping("addProduct")
	public String addProduct(HttpSession session, product_info product_info){
		System.out.println("상품등록 클릭 !!! ");
		int s_index = (Integer)session.getAttribute("s_index");
		product_info.setS_index(s_index);		
		productService.addProduct(product_info);		
		return "redirect:managementProduct?s_index=" + product_info.getS_index();
	}*/
	
	@RequestMapping("addProduct")
	public ModelAndView addProduct(HttpSession session, product_info product_info){
		ModelAndView mav = new ModelAndView();		
		int m_index = (Integer)session.getAttribute("m_index");
		product_info.setM_index(m_index);;
		productService.addProduct(product_info);
		List<product_info> productInfo = productService.getProductList(m_index);
		mav.addObject("addProduct", productInfo);
		mav.setViewName("managementProduct");		
		return mav;
	}
		
	/*@RequestMapping("productList")
	public ModelAndView productList(int p_index){		
		ModelAndView mav = new ModelAndView();
		List<product_info> productList = productService.getProductList(p_index);
		mav.addObject("productList", productList);
		mav.setViewName("productList");		
		return mav;
	} */
	
	/*@RequestMapping("downloadProductImg")
	public DownloadView productImgDownload(int p_index){
		String p_imgSrcFileName = productService.getProduct(p_index).getP_imgSrc();
		File p_imgSrcFile = new File("c:\\Upload\\image\\" + p_imgSrcFileName);
		return new DownloadView(p_imgSrcFile, p_imgSrcFileName);
	}*/	
	
	@RequestMapping("modifyProductForm")
	public String modifyProductForm(int p_index, Model model){		
		product_info product_info = productService.getProduct(p_index);
		model.addAttribute("product_info", product_info);
		return "modifyProductForm";
	}
	
	@RequestMapping("modifyProduct")
	public String modifyProduct(product_info product_info){
		productService.modifyProduct(product_info);
		return "redirect:managementProduct";
	}
	
	@RequestMapping("orderProductForm")
	public String orderProductForm(int p_index, Model model){
		product_info product_info = productService.getProduct(p_index);
		return "orderProduct";		
	}	
	
	@RequestMapping("deleteProduct")
	public String deleteProduct(int p_index){
		productService.deleteProduct(p_index);
		return "redirect:managementProduct";
	}
	
	
	/*@InitBinder
	public void translateDate(WebDataBinder binder){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}*/
	
}

