package vo;

public class Exp_cautionVO {
	private int caution_idx;
	private String member_image;
	private String member;
	private String etc_image;
	private String etc;
	private String refund;
	
	public Exp_cautionVO(int caution_idx, String member_image, String member, String etc_image, String etc,
			String refund) {
		this.caution_idx = caution_idx;
		this.member_image = member_image;
		this.member = member;
		this.etc_image = etc_image;
		this.etc = etc;
		this.refund = refund;
	}

	public int getCaution_idx() {
		return caution_idx;
	}

	public void setCaution_idx(int caution_idx) {
		this.caution_idx = caution_idx;
	}

	public String getMember_image() {
		return member_image;
	}

	public void setMember_image(String member_image) {
		this.member_image = member_image;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getEtc_image() {
		return etc_image;
	}

	public void setEtc_image(String etc_image) {
		this.etc_image = etc_image;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public String getRefund() {
		return refund;
	}

	public void setRefund(String refund) {
		this.refund = refund;
	}
	
	
}
