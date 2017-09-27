package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberInfoDao;
import model.member_info;

@Service
public class MemberInfoService {

	@Autowired
	private MemberInfoDao memberDao;
	
	public int addMember(member_info m) {
		int result = memberDao.insertMemberInfo(m);
		
		if( result > 0 ) {
			return m.getM_index();
		} else {
			return 0;
		}
	}
}
