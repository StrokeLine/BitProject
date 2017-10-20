package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dog_breeds;

@Repository
public class DogBreedsDao implements IDogBreeds {

	@Autowired
	private SqlSession session;

	@Override
	public List<dog_breeds> getDogBreedsList() {
		return session.selectList("dao.IDogBreeds.selectAllDogBreeds");
	}
}
