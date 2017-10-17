package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.pet_info;
import service.MemberInfoService;
import service.MyPetService;

@Controller
public class modifyMemberController {

	@Autowired
	private MemberInfoService memberService;
	
	@Autowired
	private MyPetService petService;
	
	@RequestMapping("modifyMember")
	public ModelAndView modifyMember(HttpSession session){
		ModelAndView mav = new ModelAndView();
		int m_index = (Integer)session.getAttribute("m_index");
		if(m_index != 0){
			mav.addObject("member", memberService.getMember(m_index));
			List<pet_info> pets = petService.getAllPets(m_index);
			mav.addObject("pets", pets);
		}
		mav.setViewName("modifyMember");		
		return mav;		
	}
}
