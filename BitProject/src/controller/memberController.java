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
	public @ResponseBody int idCheck(String m_email) {
		member_info member = memberinfoservice.emailCheck(m_email);
		int result = 0;
		if(member != null){
			result = 1;
		}
		return result;  
	}
}
