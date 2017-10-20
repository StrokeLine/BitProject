package model;

public class dog_breeds {

	private int db_index;
	private String db_breeds;
	
	public int getDb_index() {
		return db_index;
	}
	public void setDb_index(int db_index) {
		this.db_index = db_index;
	}
	public String getDb_breeds() {
		return db_breeds;
	}
	public void setDb_breeds(String db_breeds) {
		this.db_breeds = db_breeds;
	}
	@Override
	public String toString() {
		return "dog_breeds [db_index=" + db_index + ", db_breeds=" + db_breeds + "]";
	}
	
}
