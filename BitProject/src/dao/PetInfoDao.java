package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.pet_info;

@Repository
public class PetInfoDao implements IPetInfoDao {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertPetInfo(pet_info pet_info) {
		return session.insert("dao.IPetInfoDao.insertPetInfo", pet_info);
	}

	@Override
	public int updatePetInfo(pet_info pet_info) {
		return session.update("dao.IPetInfoDao.updatePetInfo", pet_info);
	}

	@Override
	public int deletePetInfo(int pet_index) {
		return session.delete("dao.IPetInfoDao.deletePetInfo", pet_index);
	}

	@Override
	public pet_info selectPetInfo(int pet_index) {
		return session.selectOne("dao.IPetInfoDao.selectPetInfo", pet_index);
	}

	@Override
	public List<pet_info> selectAllPetInfo(int m_index) {
		return session.selectList("dao.IPetInfoDao.selectAllPetInfo", m_index);
	}
	
	@Override
	public pet_info  selectMainPetInfo(int m_index){
		return session.selectOne("dao.IPetInfoDao.selectMainPetInfo", m_index);
	}
}
