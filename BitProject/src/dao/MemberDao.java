package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.member_info;

@Repository
public class MemberDao implements IMemberDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public int insertMember(member_info m) {
		return session.insert("dao.IMemberDao.insertMember", m);
	}
}
