package test240719.object3;

public class Airplane extends Plane{

	public Airplane() {
		super();
	}
	public Airplane(String planeName, int fuelSize) {
		super(planeName, fuelSize);
	}
	
	@Override
	void flight(int distance) {
		setFuelSize(getFuelSize() - (distance * 3));
	}
}
