package test240719.object2;

public class Secretary extends Employee implements Bonus{
	
	
	public Secretary() {
		super();
	}
	public Secretary(String name, int number, String department, int salary) {
		super(name, number, department, salary);
	}
	
	
	
	@Override
	public void incentive(int pay) {
		this.getSalary() + this.getSalary() * 0.8
		
	}
	@Override
	double tax() {
		
		return 0;
	}
}
