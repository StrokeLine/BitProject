package dao;

import model.member_info;

public interface IMemberInfoDao {
	public int insertMemberInfo(member_info member_info);
	public int updateMemberInfo(member_info member_info);
	public int deleteMemberInfo(int m_index);
	public member_info selectMemberInfo(int m_index);
}
