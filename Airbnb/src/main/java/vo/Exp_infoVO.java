package vo;

public class Exp_infoVO {
	private int exp_info_idx;
	private String exp_info_image;
	private String exp_info_cate;
	private String exp_info_cate_detail;
	
	public Exp_infoVO(int exp_info_idx, String exp_info_image, String exp_info_cate, String exp_info_cate_detail) {
		this.exp_info_idx = exp_info_idx;
		this.exp_info_image = exp_info_image;
		this.exp_info_cate = exp_info_cate;
		this.exp_info_cate_detail = exp_info_cate_detail;
	}

	public int getExp_info_idx() {
		return exp_info_idx;
	}

	public void setExp_info_idx(int exp_info_idx) {
		this.exp_info_idx = exp_info_idx;
	}

	public String getExp_info_image() {
		return exp_info_image;
	}

	public void setExp_info_image(String exp_info_image) {
		this.exp_info_image = exp_info_image;
	}

	public String getExp_info_cate() {
		return exp_info_cate;
	}

	public void setExp_info_cate(String exp_info_cate) {
		this.exp_info_cate = exp_info_cate;
	}

	public String getExp_info_cate_detail() {
		return exp_info_cate_detail;
	}

	public void setExp_info_cate_detail(String exp_info_cate_detail) {
		this.exp_info_cate_detail = exp_info_cate_detail;
	}
	
}
