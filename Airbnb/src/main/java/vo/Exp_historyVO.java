package vo;

public class Exp_historyVO {
	private int history_idx;
	private int user_idx;
	private int exp_idx;
	private String hit_date;
	
	public Exp_historyVO(int history_idx, int user_idx, int exp_idx, String hit_date) {
		this.history_idx = history_idx;
		this.user_idx = user_idx;
		this.exp_idx = exp_idx;
		this.hit_date = hit_date;
	}

	public int getHistory_idx() {
		return history_idx;
	}

	public void setHistory_idx(int history_idx) {
		this.history_idx = history_idx;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public int getExp_idx() {
		return exp_idx;
	}

	public void setExp_idx(int exp_idx) {
		this.exp_idx = exp_idx;
	}

	public String getHit_date() {
		return hit_date;
	}

	public void setHit_date(String hit_date) {
		this.hit_date = hit_date;
	}
	
	
}
