package vo;

public class Exp_res_dateVO {
	private int time_idx;
	private int exp_idx;
	private String start_time;
	private int exp_price;
	private char exp_member;
	private char lowest;
	
	public Exp_res_dateVO(int time_idx, int exp_idx, String start_time, int exp_price, char exp_member, char lowest) {
		this.time_idx = time_idx;
		this.exp_idx = exp_idx;
		this.start_time = start_time;
		this.exp_price = exp_price;
		this.exp_member = exp_member;
		this.lowest = lowest;
	}

	public int getTime_idx() {
		return time_idx;
	}

	public void setTime_idx(int time_idx) {
		this.time_idx = time_idx;
	}

	public int getExp_idx() {
		return exp_idx;
	}

	public void setExp_idx(int exp_idx) {
		this.exp_idx = exp_idx;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public int getExp_price() {
		return exp_price;
	}

	public void setExp_price(int exp_price) {
		this.exp_price = exp_price;
	}

	public char getExp_member() {
		return exp_member;
	}

	public void setExp_member(char exp_member) {
		this.exp_member = exp_member;
	}

	public char getLowest() {
		return lowest;
	}

	public void setLowest(char lowest) {
		this.lowest = lowest;
	}
	
	
}
