package com.admin.report.model.vo;

public class Report {
	
	private int repId;
	private int repTypeNo;
	private String repContent;
	private String pId;
	private String mId;
	private String resolved;
	
	public Report() {
		super();
	}

	public Report(int repId, int repTypeNo, String repContent, String pId, String mId, String resolved) {
		super();
		this.repId = repId;
		this.repTypeNo = repTypeNo;
		this.repContent = repContent;
		this.pId = pId;
		this.mId = mId;
		this.resolved = resolved;
	}

	public int getRepTypeNo() {
		return repTypeNo;
	}

	public void setRepTypeNo(int repTypeNo) {
		this.repTypeNo = repTypeNo;
	}

	public String getResolved() {
		return resolved;
	}

	public void setResolved(String resolved) {
		this.resolved = resolved;
	}

	public int getRepId() {
		return repId;
	}

	public void setRepId(int repId) {
		this.repId = repId;
	}

	public String getRepContent() {
		return repContent;
	}

	public void setRepContent(String repContent) {
		this.repContent = repContent;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	@Override
	public String toString() {
		return "Report [repId=" + repId + ", repTypeNo=" + repTypeNo + ", repContent=" + repContent + ", pId=" + pId + ", mId="
				+ mId + "]";
	}
}
