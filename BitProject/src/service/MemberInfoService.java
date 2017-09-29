package service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IMemberInfoDao;
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
	
	public member_info getMember(int m_index) {
		member_info member_info = memberDao.selectMemberInfo(m_index);
		
		if( member_info.getM_index() != 0 ) {
			return member_info;
		} else {
			return null;
		}
	}
	
	public member_info emailCheck(String m_email) {
		System.out.println("emailCheck start !!!");
		member_info member_info = memberDao.selectMemberEmail(m_email);
		System.out.println("emailCheck end !!!");
		if( member_info.getM_index() != 0 ) {
			System.out.println("emailCheck query success !!!");
			return member_info;
		} else {
			return null;
		}
	}
}
