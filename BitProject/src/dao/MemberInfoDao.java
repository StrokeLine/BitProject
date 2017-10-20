package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.member_info;

@Repository
public class MemberInfoDao implements IMemberInfoDao {

	@Autowired
	private SqlSession session;

	@Override
	public int insertMemberInfo(member_info member_info) {
		return session.insert("dao.IMemberInfoDao.insertMemberInfo", member_info);
	}

	@Override
	public int updateMemberInfo(member_info member_info) {
		return session.update("dao.IMemberInfoDao.updateMemberInfo", member_info);
	}

	@Override
	public int deleteMemberInfo(int m_index) {
		return session.delete("dao.IMemberInfoDao.deleteMemberInfo", m_index);
	}
	
	@Override
	public member_info selectMemberEmail(String m_email) {
		return session.selectOne("dao.IMemberInfoDao.selectMemberEmail", m_email);
	}
	
	@Override
	public member_info selectMemberName(String m_name) {
		return session.selectOne("dao.IMemberInfoDao.selectMemberName", m_name);
	}
	
	@Override
	public member_info selectMemberTel(String m_tel) {
		return session.selectOne("dao.IMemberInfoDao.selectMemberTel", m_tel);
	}

	@Override
	public member_info selectMemberInfo(int m_index) {
		return session.selectOne("dao.IMemberInfoDao.selectMemberInfo", m_index);
	}

		
}
