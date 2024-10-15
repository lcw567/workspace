package com.lc.project.hotel.model.vo;

public class Hotel {
	private String bsId;
	private String bsName;
	private String bsTel;
	private String hName;
	private String hAddress;
	private String picInfo;
	private String ht_map_lat;
	private String ht_map_long;
	private String price;
	public Hotel(String bsId, String bsName, String bsTel, String hName, String hAddress, String picInfo,
			String ht_map_lat, String ht_map_long, String price) {
		super();
		this.bsId = bsId;
		this.bsName = bsName;
		this.bsTel = bsTel;
		this.hName = hName;
		this.hAddress = hAddress;
		this.picInfo = picInfo;
		this.ht_map_lat = ht_map_lat;
		this.ht_map_long = ht_map_long;
		this.price = price;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Hotel(String bsId, String bsName, String bsTel, String hName, String hAddress, String picInfo,
			String ht_map_lat, String ht_map_long) {
		super();
		this.bsId = bsId;
		this.bsName = bsName;
		this.bsTel = bsTel;
		this.hName = hName;
		this.hAddress = hAddress;
		this.picInfo = picInfo;
		this.ht_map_lat = ht_map_lat;
		this.ht_map_long = ht_map_long;
	}
	public Hotel() {
		super();
	}
	public String getBsId() {
		return bsId;
	}
	public void setBsId(String bsId) {
		this.bsId = bsId;
	}
	public String getBsName() {
		return bsName;
	}
	public void setBsName(String bsName) {
		this.bsName = bsName;
	}
	public String getBsTel() {
		return bsTel;
	}
	public void setBsTel(String bsTel) {
		this.bsTel = bsTel;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}
	public String getPicInfo() {
		return picInfo;
	}
	public void setPicInfo(String picInfo) {
		this.picInfo = picInfo;
	}
	public String getHt_map_lat() {
		return ht_map_lat;
	}
	public void setHt_map_lat(String ht_map_lat) {
		this.ht_map_lat = ht_map_lat;
	}
	public String getHt_map_long() {
		return ht_map_long;
	}
	public void setHt_map_long(String ht_map_long) {
		this.ht_map_long = ht_map_long;
	}
	@Override
	public String toString() {
		return "Hotel [bsId=" + bsId + ", bsName=" + bsName + ", bsTel=" + bsTel + ", hName=" + hName + ", hAddress="
				+ hAddress + ", picInfo=" + picInfo + ", ht_map_lat=" + ht_map_lat + ", ht_map_long=" + ht_map_long
				+ "]";
	}
	
	
}
