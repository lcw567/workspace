package test.t240709.object;

public class Product {
	private String pName;
	private int price;
	private String brand;
	
	public Product() {}
	public Product(String pName, int price, String brand) {
		this.pName = pName;
		this.price = price;
		this.brand = brand;
	}
	
	public void information() {
		System.out.printf("제품명 : %s\n",pName);
		System.out.printf("가격 : %d\n",price);
		System.out.printf("브랜드 : %s\n",brand);
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	
}
