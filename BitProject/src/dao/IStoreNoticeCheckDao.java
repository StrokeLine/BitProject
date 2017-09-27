package dao;

import model.store_notice_check;

public interface IStoreNoticeCheckDao {
	public int insertStoreNoticeCheck(store_notice_check store_notice_check);
	public int updateStoreNoticeCheck(store_notice_check store_notice_check);
	public int deleteStoreNoticeCheck(int sc_index);
	public store_notice_check selectStoreNoticeCheck(int sc_index);
}
