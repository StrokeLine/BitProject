package dao;

import java.util.List;

import model.swap;

public interface ISwapDao {
	public List<swap> selectSwapSeller(int s_index);
	public List<swap> selectSwapMember(int m_index);
}
