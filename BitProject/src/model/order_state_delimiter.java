package model;

public class order_state_delimiter { //�ֹ�����
	private int    od_index;          //index
    private String od_state;          //�ֹ�����
	//private String od_index;	      //od_state
	//1	�Աݴ��
    //2	�Ա�Ȯ��
    //3	����غ�
    //4	��ۿϷ�
    //5	��ǰ��û
    //6	��ǰȮ��
    //7	��ȯ��û
    //8	��ȯȮ��
    //9	���ԿϷ�
    //10�ֹ����
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
