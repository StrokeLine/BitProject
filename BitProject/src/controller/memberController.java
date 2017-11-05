package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import model.member_info;
import model.pet_info;
import model.seller_info;
import service.MemberInfoService;
import service.SellerInfoService;
import service.MyPetService;

@Controller
public class memberController {
	
	private String filePath = "c:\\Users\\bit\\git\\BitProject\\BitProject\\WebContent\\resources\\images\\petImg\\";
	
	@Autowired
	private MemberInfoService memberinfoservice;
	
	@Autowired
	private SellerInfoService sellerInfoService;
	
	@Autowired
	private MyPetService petService;
	
	@RequestMapping("deleteMember")
	public ModelAndView deleteMember(HttpSession session, String m_password){
		ModelAndView mav = new ModelAndView();
		int m_index = (Integer)session.getAttribute("m_index");
		mav.addObject("member", memberinfoservice.getMember(m_index));
		mav.setViewName("deleteMember");		
		return mav;		
	}
	
	@RequestMapping(value="checkID", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int idCheck(String id) {
		System.out.println(id);
		member_info member = memberinfoservice.emailCheck(id);
		System.out.println(member);
		int result = 0;
		if(member != null){
			result = 1;
		}
		return result;  
	}
	
	@RequestMapping(value="checkTEL", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int telCheck (String tel) {
		System.out.println(tel);
		member_info member = memberinfoservice.telCheck(tel);
		System.out.println(member);
		int result = 0;
		if(member != null){
			result = 1;
		}
		return result;
	}
	
	@RequestMapping(value="checkNAME", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int nameCheck (String name) {
		System.out.println(name);
		member_info member = memberinfoservice.nameCheck(name);
		System.out.println(member);
		int result = 0;
		if(member != null){
			result = 1;
		}
		return result;
	}
	
	@RequestMapping(value="pwdCheck", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int pwdCheck(HttpSession session, String m_password) {
		int result = 0;
		result = memberinfoservice.passwdCheck((Integer)session.getAttribute("m_index"), m_password);
		return result;  
	}
	
	@RequestMapping(value="deleteMemberPro", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody boolean deleteMember(HttpSession session){		
		int m_index = (Integer)session.getAttribute("m_index");		
		boolean result = false;		
		seller_info sellerInfo = sellerInfoService.getSellerInfo(m_index);			
		if(sellerInfo != null){			
			result = sellerInfoService.deleteSeller(m_index);
		}		
		result = memberinfoservice.deleteMember(m_index);
		session.removeAttribute("m_index");
		return result;
	}
	
	@RequestMapping("downloadPetImg")
	public DownloadView downloadPetImg(HttpSession session){
		String pet_imgSrcFileName = petService.mainPet((Integer)session.getAttribute("m_index")).getPet_img();
		File pet_imgSrcFile = new File(filePath + pet_imgSrcFileName);
		return new DownloadView(pet_imgSrcFile, pet_imgSrcFileName);
	}
	
	@RequestMapping("PetImgupload")
	public ModelAndView uploadPetImg(HttpSession session, int pet_index, MultipartFile imgSrc){
		ModelAndView mav = new ModelAndView();
		String filename = imgSrc.getOriginalFilename();
		File imgFile = new File(filePath + filename);
		
		pet_info pet_info = petService.getPetInfo(pet_index);
		
		if(filename != ""){
			try {
				imgSrc.transferTo(imgFile);
				pet_info.setPet_img(filename);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}			
		}
		
		petService.modifyPet(pet_info);
		mav.setViewName("redirect:main");
		
		return mav;
	}
}
