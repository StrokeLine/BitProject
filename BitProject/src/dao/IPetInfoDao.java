package dao;

import java.util.List;

import model.pet_info;

public interface IPetInfoDao {
	public int insertPetInfo(pet_info pet_info);
	public int updatePetInfo(pet_info pet_info);
	public int deletePetInfo(int pet_index);
	public pet_info selectPetInfo(int pet_index);
	public List<pet_info> selectAllPetInfo(int m_index);
	public pet_info selectMainPetInfo(int m_index);
}
