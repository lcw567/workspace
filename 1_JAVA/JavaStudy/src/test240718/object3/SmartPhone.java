package test240718.object3;

abstract class SmartPhone implements CellPhone, TouchDisplay{
	private String maker;

	
	
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
