package dao;

import model.store_inquiry;

public interface IStoreInquiryDao {
	public int insertStoreInquiry(store_inquiry store_inquiry);
	public int updateStoreInquiry(store_inquiry store_inquiry);
	public int deleteStoreInquiry(int si_index);
	public store_inquiry selectStoreInquiry(int si_index);
	public store_inquiry selectStoreInquiryS(int s_index);
	public store_inquiry selectStoreInquiryM(int m_index);
}	
