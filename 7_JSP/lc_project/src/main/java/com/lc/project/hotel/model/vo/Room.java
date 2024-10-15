package com.lc.project.hotel.model.vo;

public class Room {
	private String bsId;
	private String rName;
	private String checkin;
	private String checkout;
	private String picInfo;
	private String rInfo;
	private int rNum;
	private int rMax;
	private int price;
	public Room(String bsId, String rName, String checkin, String checkout, String picInfo, String rInfo, int rNum,
			int rMax, int price) {
		super();
		this.bsId = bsId;
		this.rName = rName;
		this.checkin = checkin;
		this.checkout = checkout;
		this.picInfo = picInfo;
		this.rInfo = rInfo;
		this.rNum = rNum;
		this.rMax = rMax;
		this.price = price;
	}
	public Room() {
		super();
	}
	public String getBsId() {
		return bsId;
	}
	public void setBsId(String bsId) {
		this.bsId = bsId;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getPicInfo() {
		return picInfo;
	}
	public void setPicInfo(String picInfo) {
		this.picInfo = picInfo;
	}
	public String getrInfo() {
		return rInfo;
	}
	public void setrInfo(String rInfo) {
		this.rInfo = rInfo;
	}
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public int getrMax() {
		return rMax;
	}
	public void setrMax(int rMax) {
		this.rMax = rMax;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Room [bsId=" + bsId + ", rName=" + rName + ", checkin=" + checkin + ", checkout=" + checkout
				+ ", picInfo=" + picInfo + ", rInfo=" + rInfo + ", rNum=" + rNum + ", rMax=" + rMax + ", price=" + price
				+ "]";
	}
	
	
	
	
	
	
}
