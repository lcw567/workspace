package com.lc.project.travel.model.vo;

public class Travel {
	private String trName;
	private String trAddress;
	private String trInfo;
	private String tr_personnel;
	private String tr_location;
	private String tr_theme;
	private String tr_map_lat;
	private String tr_map_long;
	private String picInfo;
	public Travel() {
		super();
	}
	public Travel(String trName, String trAddress, String trInfo, String tr_personnel, String tr_location,
			String tr_theme, String tr_map_lat, String tr_map_long, String picInfo) {
		super();
		this.trName = trName;
		this.trAddress = trAddress;
		this.trInfo = trInfo;
		this.tr_personnel = tr_personnel;
		this.tr_location = tr_location;
		this.tr_theme = tr_theme;
		this.tr_map_lat = tr_map_lat;
		this.tr_map_long = tr_map_long;
		this.picInfo = picInfo;
	}
	public String getTrName() {
		return trName;
	}
	public void setTrName(String trName) {
		this.trName = trName;
	}
	public String getTrAddress() {
		return trAddress;
	}
	public void setTrAddress(String trAddress) {
		this.trAddress = trAddress;
	}
	public String getTrInfo() {
		return trInfo;
	}
	public void setTrInfo(String trInfo) {
		this.trInfo = trInfo;
	}
	public String getTr_personnel() {
		return tr_personnel;
	}
	public void setTr_personnel(String tr_personnel) {
		this.tr_personnel = tr_personnel;
	}
	public String getTr_location() {
		return tr_location;
	}
	public void setTr_location(String tr_location) {
		this.tr_location = tr_location;
	}
	public String getTr_theme() {
		return tr_theme;
	}
	public void setTr_theme(String tr_theme) {
		this.tr_theme = tr_theme;
	}
	public String getTr_map_lat() {
		return tr_map_lat;
	}
	public void setTr_map_lat(String tr_map_lat) {
		this.tr_map_lat = tr_map_lat;
	}
	public String getTr_map_long() {
		return tr_map_long;
	}
	public void setTr_map_long(String tr_map_long) {
		this.tr_map_long = tr_map_long;
	}
	public String getPicInfo() {
		return picInfo;
	}
	public void setPicInfo(String picInfo) {
		this.picInfo = picInfo;
	}
	@Override
	public String toString() {
		return "Travel [trName=" + trName + ", trAddress=" + trAddress + ", trInfo=" + trInfo + ", tr_personnel="
				+ tr_personnel + ", tr_location=" + tr_location + ", tr_theme=" + tr_theme + ", tr_map_lat="
				+ tr_map_lat + ", tr_map_long=" + tr_map_long + ", picInfo=" + picInfo + "]";
	}
	
	
}
