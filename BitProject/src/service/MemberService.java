package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;
import model.member_info;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	
	public int addMember(member_info m) {
		int result = memberDao.insertMember(m);
		
		if( result > 0 ) {
			return m.getM_index();
		} else {
			return 0;
		}
	}
}
