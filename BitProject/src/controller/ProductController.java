package controller;

import java.io.File;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import model.product_info;
import service.ProductService;

public class ProductController {
	
	private ProductService productService;
	
	@RequestMapping("addProduct")
	public String addProduct(product_info p, @RequestParam("file") MultipartFile file){
		productService.addProduct(p, file);
		return "redirect:customerProduct";
	}	
	
	/*@RequestMapping("downloadProductImg")
	public DownloadView productImgDownload(int p_index){
		String productImg_fileName = productService.getProduct(p_index).getP_imgSrc();
		File file = new File("" + productImg_fileName);
		return new DownloadView(file, productImg_fileName);
	}*/
	
}

