package vo;

public class Exp_joinVO {
	private int join_idx;
	private String join_image;
	private String join_cate;
	private String join_detail;
	
	public Exp_joinVO(int join_idx, String join_image, String join_cate, String join_detail) {
		this.join_idx = join_idx;
		this.join_image = join_image;
		this.join_cate = join_cate;
		this.join_detail = join_detail;
	}

	public int getJoin_idx() {
		return join_idx;
	}

	public void setJoin_idx(int join_idx) {
		this.join_idx = join_idx;
	}

	public String getJoin_image() {
		return join_image;
	}

	public void setJoin_image(String join_image) {
		this.join_image = join_image;
	}

	public String getJoin_cate() {
		return join_cate;
	}

	public void setJoin_cate(String join_cate) {
		this.join_cate = join_cate;
	}

	public String getJoin_detail() {
		return join_detail;
	}

	public void setJoin_detail(String join_detail) {
		this.join_detail = join_detail;
	}
	
	
}
