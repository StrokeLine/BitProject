package dao;

import java.util.List;

import model.take_back;

public interface ITakeBackDao {
	public List<take_back> selectTakeBackSeller(int s_index);
	public List<take_back> selectTakeBackMember(int m_index);
}
