package dao;

import model.member_info;

public interface IMemberInfoDao {
	public int insertMemberInfo(member_info member_info);
	public int updateMemberInfo(member_info member_info);
	public int deleteMemberInfo(int m_index);
	public member_info selectMemberEmail(String m_email);
	public member_info selectMemberTel(String m_tel);
	public member_info selectMemberName(String m_name);
	public member_info selectMemberInfo(int m_index);
}
