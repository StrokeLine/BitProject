package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.SystemPropertyUtils;

import dao.DogBreedsDao;
import dao.PetInfoDao;
import model.dog_breeds;
import model.pet_info;

@Service
public class MyPetService {

	@Autowired
	private PetInfoDao petInfoDao;
	
	@Autowired
	private DogBreedsDao dogBreedsDao;
	
	public List<pet_info> getAllPets(int m_index) {
		return petInfoDao.selectAllPetInfo(m_index);
	}
	
	public int addPet(pet_info pet_info) {
		int result = petInfoDao.insertPetInfo(pet_info);
		
		if(result != 0){
			return pet_info.getPet_index();
		} else {
			return 0;
		}
	}
	
	public int modifyPet(pet_info pet_info){
		return petInfoDao.updatePetInfo(pet_info);
	}
	
	public int deletePet(int pet_index) {
		return petInfoDao.deletePetInfo(pet_index);
	}
		
	public List<dog_breeds> getAllDogBreeds() {
		return dogBreedsDao.getDogBreedsList();
	}
	
	public pet_info mainPet (int m_index){
		return petInfoDao.selectMainPetInfo(m_index);
	}
}
