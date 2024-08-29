package test240716.object3;

public class PersonController {
	private Student[] s = new Student[3];
	private Employee[] e = new Employee[10];
	
	
	
	public int[] personCount() {
		int[] res = new int[2];
		for(int i = 0; i < s.length; i++) {
			if(s[i] != null) res[0]++;
		}
		for(int i = 0; i < e.length; i++) {
			if(e[i] != null) res[1]++;
		}
		return res;
	}
	public void insertStudent(String name, int age, double height, double weight, int grade, String major) {
		s[personCount()[0]] = new Student(name, age, height, weight, grade, major);
	}
	public Student[] printStudent() {
		Student[] res = new Student[personCount()[0]];
		for(int i = 0; i < res.length; i++) {
			res[i] = new Student();
			res[i] = s[i];
		}
		return res;
	}
	public void insertEmployee(String name, int age, double height, double weight, int salary, String dept) {
		e[personCount()[1]] = new Employee(name, age, height, weight, salary, dept);
	}
	public Employee[] printEmployee() {
		Employee[] res = new Employee[personCount()[1]];
		for(int i = 0; i < res.length; i++) {
			res[i] = new Employee();
			res[i] = e[i];
		}
		return res;
	}
}
