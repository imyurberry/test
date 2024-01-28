package vo;

public class Exp_reportVO {
	private int exp_report_idx;
	private String exp_report_type;
	
	public Exp_reportVO(int exp_report_idx, String exp_report_type) {
		this.exp_report_idx = exp_report_idx;
		this.exp_report_type = exp_report_type;
	}

	public int getExp_report_idx() {
		return exp_report_idx;
	}

	public void setExp_report_idx(int exp_report_idx) {
		this.exp_report_idx = exp_report_idx;
	}

	public String getExp_report_type() {
		return exp_report_type;
	}

	public void setExp_report_type(String exp_report_type) {
		this.exp_report_type = exp_report_type;
	}
	
	
}
