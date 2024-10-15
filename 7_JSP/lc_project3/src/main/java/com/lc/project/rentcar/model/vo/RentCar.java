package com.lc.project.rentcar.model.vo;

public class RentCar {
	private String carNum;
	private String carId;
	private String carName;
	private int carPrice;
	private String carInfo;
	private String carPic;
	
	public RentCar(String carNum, String carId, String carName, int carPrice, String carInfo, String carPic) {
		super();
		this.carNum = carNum;
		this.carId = carId;
		this.carName = carName;
		this.carPrice = carPrice;
		this.carInfo = carInfo;
		this.carPic = carPic;
	}

	public RentCar() {
		super();
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public String getCarId() {
		return carId;
	}

	public void setCarId(String carId) {
		this.carId = carId;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public int getCarPrice() {
		return carPrice;
	}

	public void setCarPrice(int carPrice) {
		this.carPrice = carPrice;
	}

	public String getCarInfo() {
		return carInfo;
	}

	public void setCarInfo(String carInfo) {
		this.carInfo = carInfo;
	}

	public String getCarPic() {
		return carPic;
	}

	public void setCarPic(String carPic) {
		this.carPic = carPic;
	}

	@Override
	public String toString() {
		return "RentCar [carNum=" + carNum + ", carId=" + carId + ", carName=" + carName + ", carPrice=" + carPrice
				+ ", carInfo=" + carInfo + ", carPic=" + carPic + "]";
	}
	
	
	
}