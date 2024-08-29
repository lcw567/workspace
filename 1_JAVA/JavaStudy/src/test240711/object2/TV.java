package test240711.object2;

public class TV {
	String brand;
	int launch;
	int size;
	int price;
	
	public TV() {
		super();
	}
	public TV(String brand, int launch, int size, int price) {
		super();
		this.brand = brand;
		this.launch = launch;
		this.size = size;
		this.price = price;
	}
	
	public void show() {
//		String res = getBrand() + "에서 만든 " + getLaunch() + "년형 " + getSize() + "인치 TV가격 : " + getPrice();
//		return res;
		System.out.println(getBrand() + "에서 만든 " + getLaunch() + "년형 " + getSize() + "인치 TV가격 : " + getPrice());
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getLaunch() {
		return launch;
	}
	public void setLaunch(int launch) {
		this.launch = launch;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
