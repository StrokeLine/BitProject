package controller;

import java.io.File;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import model.product_info;
import service.ProductService;

public class ProductController {
	
	private ProductService productService;
	
	@RequestMapping("addProduct")
	public String addProduct(product_info product_info, @RequestParam("productImgFile") MultipartFile productImgFile){
		productService.addProduct(product_info, productImgFile);
		return "redirect:";
	}		
	
	@RequestMapping("downloadProductImg")
	public DownloadView productImgDownload(int p_index){
		String productImgFileName = productService.getProduct(p_index).getP_imgSrc();
		File productImgFile = new File("" + productImgFileName);
		return new DownloadView(productImgFile, productImgFileName);
	}	
	
	@RequestMapping("modifyProductForm")
	public String modifyProductForm(int p_index, Model model){		
		product_info product_info = productService.getProduct(p_index);
		model.addAttribute("product_info", product_info);
		return "modifyProductForm";
	}
	
	@RequestMapping("modifyProduct")
	public String modifyProduct(product_info product_info){
		productService.modifyProduct(product_info);
		return "redirect:";
	}
	
	@RequestMapping("deleteProduct")
	public String deleteProduct(int p_index){
		productService.deleteProduct(p_index);
		return "redirect:";
	}
	
	
}

