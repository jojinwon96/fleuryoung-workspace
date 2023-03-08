package com.kh.sale.model.vo;

public class Sale {
	
	private int payId;
	private int odId;
	private String pId;
	private int odCount;
	private int totalPay;
	private int odStatus;
	private String payDate;
	private int invoiceId;
	
	public Sale() {}
	
	public Sale(int payId, int odId, String pId, int odCount, int totalPay, int odStatus, String payDate,
			int invoiceId) {
		this.payId = payId;
		this.odId = odId;
		this.pId = pId;
		this.odCount = odCount;
		this.totalPay = totalPay;
		this.odStatus = odStatus;
		this.payDate = payDate;
		this.invoiceId = invoiceId;
	}
	
	public int getPayId() {
		return payId;
	}
	public void setPayId(int payId) {
		this.payId = payId;
	}
	public int getOdId() {
		return odId;
	}
	public void setOdId(int odId) {
		this.odId = odId;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public int getOdCount() {
		return odCount;
	}
	public void setOdCount(int odCount) {
		this.odCount = odCount;
	}
	public int getTotalPay() {
		return totalPay;
	}
	public void setTotalPay(int totalPay) {
		this.totalPay = totalPay;
	}
	public int getOdStatus() {
		return odStatus;
	}
	public void setOdStatus(int odStatus) {
		this.odStatus = odStatus;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public int getInvoiceId() {
		return invoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}
	
	@Override
	public String toString() {
		return "Sale [payId=" + payId + ", odId=" + odId + ", pId=" + pId + ", odCount=" + odCount + ", totalPay="
				+ totalPay + ", odStatus=" + odStatus + ", payDate=" + payDate + ", invoiceId=" + invoiceId + "]";
	}
	
	
}
