package solopractice.object.practice7;

public abstract class SmartPhone implements CellPhone, TouchDisplay{
	String maker;

	public SmartPhone() {
		super();
	}
	
	public abstract String printInformation();

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

}
