package vo;

public class Exp_filterVO {
	private int exp_filter_idx;
	private String filter_name;
	
	public Exp_filterVO(int exp_filter_idx, String filter_name) {
		this.exp_filter_idx = exp_filter_idx;
		this.filter_name = filter_name;
	}

	public int getExp_filter_idx() {
		return exp_filter_idx;
	}

	public void setExp_filter_idx(int exp_filter_idx) {
		this.exp_filter_idx = exp_filter_idx;
	}

	public String getFilter_name() {
		return filter_name;
	}

	public void setFilter_name(String filter_name) {
		this.filter_name = filter_name;
	}
	
	
}
