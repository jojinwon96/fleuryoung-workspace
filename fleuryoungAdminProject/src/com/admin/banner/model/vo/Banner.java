package com.admin.banner.model.vo;

import java.sql.Date;

public class Banner {
	
	private int banId;
	private String banName;
	private String banAtt;
	private String banDetail;
	private String banLink;
	private Date banAddDate;
	private Date banEditDate;
	private int couId;
	
	public Banner() {
		super();
	}

	public Banner(int banId, String banName, String banAtt, String banDetail, String banLink, Date banAddDate,
			Date banEditDate) {
		super();
		this.banId = banId;
		this.banName = banName;
		this.banAtt = banAtt;
		this.banDetail = banDetail;
		this.banLink = banLink;
		this.banAddDate = banAddDate;
		this.banEditDate = banEditDate;
	}
	
	public int getCouId() {
		return couId;
	}

	public void setCouId(int couId) {
		this.couId = couId;
	}

	public int getBanId() {
		return banId;
	}

	public void setBanId(int banId) {
		this.banId = banId;
	}

	public String getBanName() {
		return banName;
	}

	public void setBanName(String banName) {
		this.banName = banName;
	}

	public String getBanAtt() {
		return banAtt;
	}

	public void setBanAtt(String banAtt) {
		this.banAtt = banAtt;
	}

	public String getBanDetail() {
		return banDetail;
	}

	public void setBanDetail(String banDetail) {
		this.banDetail = banDetail;
	}

	public String getBanLink() {
		return banLink;
	}

	public void setBanLink(String banLink) {
		this.banLink = banLink;
	}

	public Date getBanAddDate() {
		return banAddDate;
	}

	public void setBanAddDate(Date banAddDate) {
		this.banAddDate = banAddDate;
	}

	public Date getBanEditDate() {
		return banEditDate;
	}

	public void setBanEditDate(Date banEditDate) {
		this.banEditDate = banEditDate;
	}

	@Override
	public String toString() {
		return "Banner [banId=" + banId + ", banName=" + banName + ", banAtt=" + banAtt + ", banDetail=" + banDetail
				+ ", banLink=" + banLink + ", banAddDate=" + banAddDate + ", banEditDate=" + banEditDate + "]";
	}
	
}
