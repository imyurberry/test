package vo;

public class Exp_resVO {
	private int user_idx;
	private int res_idx;
	private String date_idx;
	private int time_idx;

	public Exp_resVO(int user_idx, int res_idx, String date_idx, int time_idx) {
		this.user_idx = user_idx;
		this.res_idx = res_idx;
		this.date_idx = date_idx;
		this.time_idx = time_idx;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public int getRes_idx() {
		return res_idx;
	}

	public void setRes_idx(int res_idx) {
		this.res_idx = res_idx;
	}

	public String getDate_idx() {
		return date_idx;
	}

	public void setDate_idx(String date_idx) {
		this.date_idx = date_idx;
	}

	public int getTime_idx() {
		return time_idx;
	}

	public void setTime_idx(int time_idx) {
		this.time_idx = time_idx;
	}
	
	
}
