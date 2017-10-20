package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import model.member_info;
import service.MemberInfoService;

@Controller
public class memberController {
	@Autowired
	private MemberInfoService memberinfoservice;
	
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
}
