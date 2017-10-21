package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.dog_breeds;
import model.member_info;
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
	
	@RequestMapping(value="updateMember", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int updateMember(HttpSession session, member_info member_info ) {
		member_info originMember = memberService.getMember((Integer)session.getAttribute("m_index"));
		
		
		return memberService.updateMember(member_info);  
	}
	
	@RequestMapping(value="addPet", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int addPet(HttpSession session, pet_info pet_info) {
		int result = 0;	
		pet_info.setM_index((Integer)session.getAttribute("m_index"));
		result = petService.addPet(pet_info);
		
		return result;  
	}
	
	@RequestMapping(value="deletePet", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int deletePet(int id) {
		int result = 0;	
		
		result = petService.deletePet(id);
		
		return result;  
	}
	
	@RequestMapping(value="modifyPet", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int modifyPet(pet_info pet_info) {
		int result = 0;	
		
		result = petService.modifyPet(pet_info);
		
		return result;  
	}
	
	@RequestMapping(value="breedsList", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<dog_breeds> breedsList() {
		return petService.getAllDogBreeds();
	}
}
