package com.kh.nonMember.model.vo;

public class NonMemberOrder {
	

	private int ord_id;
	private String ord_date;
	private int ord_postal;
	private String ord_street;
	private String ord_address;
	private String ord_request;
	private String ord_receiver_name;
	private String ord_receiver_phone;
	
	
	public NonMemberOrder() {
		super();
	}


	public NonMemberOrder(int ord_id, String ord_date, int ord_postal, String ord_street, String ord_address,
			String ord_request, String ord_receiver_name, String ord_receiver_phone) {
		super();
		this.ord_id = ord_id;
		this.ord_date = ord_date;
		this.ord_postal = ord_postal;
		this.ord_street = ord_street;
		this.ord_address = ord_address;
		this.ord_request = ord_request;
		this.ord_receiver_name = ord_receiver_name;
		this.ord_receiver_phone = ord_receiver_phone;
	}
	
	


	public NonMemberOrder(String ord_receiver_name, String ord_receiver_phone) {
		super();
		this.ord_receiver_name = ord_receiver_name;
		this.ord_receiver_phone = ord_receiver_phone;
	}
	
	


	public NonMemberOrder(int ord_id, String ord_receiver_name, String ord_receiver_phone) {
		super();
		this.ord_id = ord_id;
		this.ord_receiver_name = ord_receiver_name;
		this.ord_receiver_phone = ord_receiver_phone;
	}
	
	


	public NonMemberOrder(int ord_id) {
		super();
		this.ord_id = ord_id;
	}


	public int getOrd_id() {
		return ord_id;
	}


	public void setOrd_id(int ord_id) {
		this.ord_id = ord_id;
	}


	public String getOrd_date() {
		return ord_date;
	}


	public void setOrd_date(String ord_date) {
		this.ord_date = ord_date;
	}


	public int getOrd_postal() {
		return ord_postal;
	}


	public void setOrd_postal(int ord_postal) {
		this.ord_postal = ord_postal;
	}


	public String getOrd_street() {
		return ord_street;
	}


	public void setOrd_street(String ord_street) {
		this.ord_street = ord_street;
	}


	public String getOrd_address() {
		return ord_address;
	}


	public void setOrd_address(String ord_address) {
		this.ord_address = ord_address;
	}


	public String getOrd_request() {
		return ord_request;
	}


	public void setOrd_request(String ord_request) {
		this.ord_request = ord_request;
	}


	public String getOrd_receiver_name() {
		return ord_receiver_name;
	}


	public void setOrd_receiver_name(String ord_receiver_name) {
		this.ord_receiver_name = ord_receiver_name;
	}


	public String getOrd_receiver_phone() {
		return ord_receiver_phone;
	}


	public void setOrd_receiver_phone(String ord_receiver_phone) {
		this.ord_receiver_phone = ord_receiver_phone;
	}


	@Override
	public String toString() {
		return "NonMemberOrder [ord_id=" + ord_id + ", ord_date=" + ord_date + ", ord_postal=" + ord_postal
				+ ", ord_street=" + ord_street + ", ord_address=" + ord_address + ", ord_request=" + ord_request
				+ ", ord_receiver_name=" + ord_receiver_name + ", ord_receiver_phone=" + ord_receiver_phone + "]";
	}
	
	
	
	
	
	

}
