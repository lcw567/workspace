package test240718.object1;

public class PersonController {
	private Person[] p = new Person[20];
	
	
	public int[] personCount() {
		int[] res = new int[2];
		for(int i = 0; i < p.length; i++) {
			if(p[i] instanceof Student) res[0]++;
		}
		for(int i = 0; i < p.length; i++) {
			if(p[i] instanceof Employee) res[1]++;
		}
		return res;
	}
	public void insertStudent(String name, int age, double height, double weight, int grade, String major) {
		p[personCount()[0]] = new Student(name, age, height, weight, grade, major);
	}
	public Student[] printStudent() {
		Student[] res = new Student[personCount()[0]];
		for(int i = 0; i < res.length; i++) {
			if(p[i] instanceof Student) {
				res[i] = new Student();
				res[i] = (Student)p[i];
			}
		}
		return res;
	}
	public void insertEmployee(String name, int age, double height, double weight, int salary, String dept) {
		p[personCount()[1]] = new Employee(name, age, height, weight, salary, dept);
	}
	public Employee[] printEmployee() {
		Employee[] res = new Employee[personCount()[1]];
		for(int i = 0; i < res.length; i++) {
			if(p[i] instanceof Employee) {
				res[i] = new Employee();
				res[i] = (Employee)p[i];
			}
		}
		return res;
	}
}
