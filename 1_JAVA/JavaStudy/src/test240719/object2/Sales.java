package test240719.object2;

public class Sales extends Employee implements Bonus{

	
	public Sales() {
		super();
	}
	public Sales(String name, int number, String department, int salary) {
		super(name, number, department, salary);
	}
	
	
	
	@Override
	public void incentive(int pay) {
		
	}
	@Override
	double tax() {
		
		return 0;
	}
}
