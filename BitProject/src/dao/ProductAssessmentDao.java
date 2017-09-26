package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.product_assessment;

@Repository
public class ProductAssessmentDao implements IProductAssessmentDao {

	@Autowired
	private SqlSession session;

	@Override
	public int insertProductAssessment(product_assessment product_assessment) {
		return session.insert("dao.IProductAssessmentDao.insertProductAssessment", product_assessment);
	}

	@Override
	public int updateProductAssessment(product_assessment product_assessment) {
		return session.update("dao.IProductAssessmentDao.updateProductAssessment", product_assessment);
	}

	@Override
	public int deleteProductAssessment(int pa_index) {
		return session.delete("dao.IProductAssessmentDao.deleteProductAssessment", pa_index);
	}

	@Override
	public product_assessment selectProductAssessment(int index) {
		return session.selectOne("dao.IProductAssessmentDao.selectProductAssessment", index);
	}

	@Override
	public List<product_assessment> selectAllProductAssessment(int index) {
		return session.selectList("dao.IProductAssessmentDao.selectAllProductAssessment", index);
	}
	
	
}
