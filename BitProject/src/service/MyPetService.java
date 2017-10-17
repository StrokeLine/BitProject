package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.SystemPropertyUtils;

import dao.PetInfoDao;
import model.pet_info;

@Service
public class MyPetService {

	@Autowired
	private PetInfoDao petInfoDao;
	
	public List<pet_info> getAllPets(int m_index) {
		return petInfoDao.selectAllPetInfo(m_index);
	}
}
