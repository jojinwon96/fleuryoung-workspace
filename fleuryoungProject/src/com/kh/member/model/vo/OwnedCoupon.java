package com.kh.member.model.vo;

public class OwnedCoupon {
	private String memId;
	private int couId;
	private String couUsedYn;
	
	public OwnedCoupon() {}

	public OwnedCoupon(String memId, int couId, String couUsedYn) {
		super();
		this.memId = memId;
		this.couId = couId;
		this.couUsedYn = couUsedYn;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getCouId() {
		return couId;
	}

	public void setCouId(int couId) {
		this.couId = couId;
	}

	public String getCouUsedYn() {
		return couUsedYn;
	}

	public void setCouUsedYn(String couUsedYn) {
		this.couUsedYn = couUsedYn;
	}

	@Override
	public String toString() {
		return "OwnedCoupon [memId=" + memId + ", couId=" + couId + ", couUsedYn=" + couUsedYn + "]";
	}
	
	
}
