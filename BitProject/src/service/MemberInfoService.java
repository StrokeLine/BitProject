package service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberInfoDao;
import model.member_info;

@Service
public class MemberInfoService {

	@Autowired
	private MemberInfoDao memberDao;
	
	public int addMember(member_info member_info) {
		member_info.setM_email_check(false);
		member_info.setM_tel_check(false);
		member_info.setM_date(new Date());
		
		int result = memberDao.insertMemberInfo(member_info);
		
		if( result > 0 ) {
			return member_info.getM_index();
		} else {
			return 0;
		}
	}
	
	
	public int updateMember(member_info member_info) {
		
		return memberDao.updateMemberInfo(member_info);
	}
	
	public member_info getMember(int m_index) {
		member_info member_info = memberDao.selectMemberInfo(m_index);
		
		if( member_info != null ) {
			return member_info;
		} else {
			return null;
		}
	}
	
	public member_info emailCheck(String m_email) {
		member_info member_info = memberDao.selectMemberEmail(m_email);
		if( member_info != null) {
			System.out.println("emailCheck query success !!!");
			return member_info;
		} else {
			return null;
		}
	}
	
	public member_info telCheck (String m_tel) {
		member_info member_info =memberDao.selectMemberTel(m_tel);
		if(member_info != null) {
			System.out.println("telCheck query success !!!");
			return member_info;
		} else {
			return null;
		}
	}
	
	public member_info nameCheck (String m_name) {
		member_info member_info = memberDao.selectMemberName(m_name);
		if(member_info != null) {
			System.out.println("nameCheck query success !!!");
			return member_info;
		} else {
			return null;
		}
	}
	public int passwdCheck(int m_index, String m_password){
		int result = 0;
		member_info member_info = memberDao.selectMemberInfo(m_index);
		
		if(m_password.equals(member_info.getM_password())){
			result = 1;
		}		
		return result;
	}
	
	public boolean deleteMember(int m_index){
		int member_info = memberDao.deleteMemberInfo(m_index);
		if(member_info > 0){
			return true;
		} else {
			return false;
		}		
	}
}
