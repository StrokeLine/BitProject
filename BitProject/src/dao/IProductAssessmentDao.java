package dao;

import java.util.List;

import model.product_assessment;

public interface IProductAssessmentDao {
	public int insertProductAssessment(product_assessment product_assessment);
	public int updateProductAssessment(product_assessment product_assessment);
	public int deleteProductAssessment(int pa_index);
	public product_assessment selectProductAssessment(int index);
	public List<product_assessment> selectAllProductAssessment(int index);
}
