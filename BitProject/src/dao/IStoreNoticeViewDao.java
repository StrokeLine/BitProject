package dao;

import java.util.List;

import model.store_notice_view;

public interface IStoreNoticeViewDao {
	public store_notice_view selectStoreNoticeView(int sc_index);
	public List<store_notice_view> selectAllStoreNoticeViewS(int s_index);
	public List<store_notice_view> selectAllStoreNoticeViewM(int m_index);
	public List<store_notice_view> selectAllStoreNoticeViewV(int v_index);
}
