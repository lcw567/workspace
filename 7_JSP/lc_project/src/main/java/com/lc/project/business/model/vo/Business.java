package com.lc.project.business.model.vo;

import java.sql.Date;

public class Business {

	private String bsName;
	private String bsId;
	private String bsPwd;
	private String bsEmail;
	private String bsTel;
	private String bsAddress;
	private String bslocation;
	private String bsTitle;
	private String latitude;
	private String longitude;
	private Date enrolldate;
	private Date modifydate;
	private String status;
	
	public Business() {
		super();
	}

	public Business(String bsName, String bsId, String bsPwd, String bsEmail, String bsTel, String bsAddress,
			String bslocation, String bsTitle, String latitude, String longitude, Date enrolldate, Date modifydate,
			String status) {
		super();
		this.bsName = bsName;
		this.bsId = bsId;
		this.bsPwd = bsPwd;
		this.bsEmail = bsEmail;
		this.bsTel = bsTel;
		this.bsAddress = bsAddress;
		this.bslocation = bslocation;
		this.bsTitle = bsTitle;
		this.latitude = latitude;
		this.longitude = longitude;
		this.enrolldate = enrolldate;
		this.modifydate = modifydate;
		this.status = status;
	}

	public Business(String bsName, String bsId, String bsPwd, String bsEmail, String bsTel, String bsAddress,
			String bslocation, String bsTitle) {
		super();
		this.bsName = bsName;
		this.bsId = bsId;
		this.bsPwd = bsPwd;
		this.bsEmail = bsEmail;
		this.bsTel = bsTel;
		this.bsAddress = bsAddress;
		this.bslocation = bslocation;
		this.bsTitle = bsTitle;
	}

	public Business(String bsName, String bsId, String bsPwd, String bsEmail, String bsTel, String bsAddress,
			String bsTitle) {
		super();
		this.bsName = bsName;
		this.bsId = bsId;
		this.bsPwd = bsPwd;
		this.bsEmail = bsEmail;
		this.bsTel = bsTel;
		this.bsAddress = bsAddress;
		this.bsTitle = bsTitle;
	}

	public String getBsName() {
		return bsName;
	}

	public void setBsName(String bsName) {
		this.bsName = bsName;
	}

	public String getBsId() {
		return bsId;
	}

	public void setBsId(String bsId) {
		this.bsId = bsId;
	}

	public String getBsPwd() {
		return bsPwd;
	}

	public void setBsPwd(String bsPwd) {
		this.bsPwd = bsPwd;
	}

	public String getBsEmail() {
		return bsEmail;
	}

	public void setBsEmail(String bsEmail) {
		this.bsEmail = bsEmail;
	}

	public String getBsTel() {
		return bsTel;
	}

	public void setBsTel(String bsTel) {
		this.bsTel = bsTel;
	}

	public String getBsAddress() {
		return bsAddress;
	}

	public void setBsAddress(String bsAddress) {
		this.bsAddress = bsAddress;
	}

	public String getBslocation() {
		return bslocation;
	}

	public void setBslocation(String bslocation) {
		this.bslocation = bslocation;
	}

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public Date getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

	public Date getModifydate() {
		return modifydate;
	}

	public void setModifydate(Date modifydate) {
		this.modifydate = modifydate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Business [bsName=" + bsName + ", bsId=" + bsId + ", bsPwd=" + bsPwd + ", bsEmail=" + bsEmail
				+ ", bsTel=" + bsTel + ", bsAddress=" + bsAddress + ", bslocation=" + bslocation + ", bsTitle="
				+ bsTitle + ", latitude=" + latitude + ", longitude=" + longitude + ", enrolldate=" + enrolldate
				+ ", modifydate=" + modifydate + ", status=" + status + "]";
	}

	


	
}