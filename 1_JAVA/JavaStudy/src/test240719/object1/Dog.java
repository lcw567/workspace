package test240719.object1;

public class Dog extends Animal{
	String PLACE = "애견카페";
	private int weight;
	
	
	
	public Dog() {
		super();
	}
	public Dog(String name, String kinds, int weight) {
		super(name, kinds);
		this.PLACE = PLACE;
		this.weight = weight;
	}
	
	
	
	@Override
	public void speak() {
		System.out.println(this.toString() + "몸무게는 " + getWeight() + "kg 입니다.");
	}
	
	
	
	public String getPLACE() {
		return PLACE;
	}
	public void setPLACE(String pLACE) {
		PLACE = pLACE;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
}
