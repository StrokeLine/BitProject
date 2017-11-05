package dao;

import java.util.List;

import model.product_img;
import model.product_info;

public interface IProductImgDao {
	public int insertProductImg(product_img product_img);
	public int updateProductImg(product_img product_img);
	public int deleteProductImg(int pi_index);
	public product_img selectProductImg(int p_index);
	public List<product_img> selectAllProductImg(int p_index);
}
