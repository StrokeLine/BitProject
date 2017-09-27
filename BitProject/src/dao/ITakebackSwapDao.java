package dao;

import model.takeback_swap;

public interface ITakebackSwapDao {
	public int insertTakebackSwap(takeback_swap takeback_swap);
	public int updateTakebackSwap(takeback_swap takeback_swap);
	public int deleteTakebackSwap(int tb_index);
	public takeback_swap selectTakebackSwap(int tb_index);
}
