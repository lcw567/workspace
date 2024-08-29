package test240719.object2;

public class Company {

	public static void main(String[] args) {
		Employee[] employees = new Employee[2];
		employees[0] = new Secretary("Hilery", 1, "secretary", 800);
		employees[1] = new Sales("Clinten", 2, "sales", 1200);
		
		System.out.println("name department salary ");
		System.out.println("------------------------------------");
		for(int i = 0; i < employees.length; i++) {
			System.out.println(employees[i].getName() + "\t\t" + employees[i].getDepartment() + "\t\t" + employees[i].getSalary());
			employees[i].setSalary(employees[i].getSalary() + 100);
		}
		for(int i = 0; i < employees.length; i++) {
			System.out.println(employees[i].getName() + "\t\t" + employees[i].getDepartment() + "\t\t" + employees[i].getSalary() + "\t\t" + employees[i].get);
		}
	}

}
