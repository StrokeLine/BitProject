package dao;

import java.util.List;

import model.product_info;

public interface IProductInfoDao {

	public int insertProductInfo(product_info product_info);
	public int updateProductInfo(product_info product_info);
	public int deleteProductInfo(int p_index);
	public product_info selectProduct(int p_index);
	public List<product_info> selectAllProductInfoP(int p_index);
	public List<product_info> selectAllProductInfoH(String p_hashTag);
	public List<product_info> selectAllProductInfoMJ(String p_major_value);
	public List<product_info> selectAllProductInfoMN(String p_miner_value);
}
