package dao;

import java.util.List;

import model.store_inquiry_view;

public interface IStoreInquiryViewDao {
	public store_inquiry_view selectStoreInquiryView(int s_index);					// 하나 가져오기
	public List<store_inquiry_view> selectAllStoreInquiryViewS(int s_index);		// 해당 상점 index로 다 가져오기
	public List<store_inquiry_view> selectAllStoreInquiryViewM(int m_index);		// 해당 회원 index로 다 가져오기
	public List<store_inquiry_view> selectAllStoreInquiryViewT(String si_type);		// 해당 문의 유형로 다 가져오기
	public List<store_inquiry_view> selectAllStoreInquiryViewV(int si_view);		// 해당 확인 유무로 다 가져오기
}
