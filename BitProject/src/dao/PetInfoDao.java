package dao;

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
		return session.selectOne("dao.IpetInfoDao.selectPetInfo", pet_index);
	}
}
