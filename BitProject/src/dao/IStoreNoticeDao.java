package dao;

import java.util.List;

import model.store_notice;

public interface IStoreNoticeDao {
	public int insertStoreNotice(store_notice store_notice);
	public int updateStoreNotice(store_notice store_notice);
	public int deleteStoreNotice(int sn_index);
	public store_notice selectStoreNotice(int sn_index);
	public List<store_notice> selectAllStoreNotice(int s_index);
}
