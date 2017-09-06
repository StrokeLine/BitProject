package model;

public class order_state_delimiter { //주문상태
	private int    od_index;          //index
    private String od_state;          //주문상태
	//private String od_index;	      //od_state
	//1	입금대기
    //2	입금확인
    //3	배송준비
    //4	배송완료
    //5	반품요청
    //6	반품확인
    //7	교환요청
    //8	교환확인
    //9	구입완료
    //10주문취소
public int getOd_index() {
	return od_index;
}
public void setOd_index(int od_index) {
	this.od_index = od_index;
}
public String getOd_state() {
	return od_state;
}
public void setOd_state(String od_state) {
	this.od_state = od_state;
}

@Override
public String toString() {
	return "order_state_delimiter [od_index=" + od_index + ", od_state=" + od_state + "]";
}

	
}
