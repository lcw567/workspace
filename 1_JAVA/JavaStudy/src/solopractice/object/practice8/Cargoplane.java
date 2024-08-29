package solopractice.object.practice8;

public class Cargoplane extends Plane{

	public Cargoplane() {
		super();
	}

	public Cargoplane(String planeName, int fuelSize) {
		super(planeName, fuelSize);
	}
	
	public void flight(int distance) {
		int usefuel = distance * 5;
		super.setFuelSize((super.getFuelSize() - usefuel));
		System.out.println(super.getPlaneName() + "\t " + super.getFuelSize());
	}

}
