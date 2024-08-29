package solopractice.object.practice6;

public class PersonController {
	private Student[] s = new Student[3];  //데이터값 n,n,n
	private Employee[] e = new Employee[10];//데이터값 n,n,n,n,n,n,n,n,n,n
	
	public int[] personCount() {
		int[] countArr = new int[2];
		
		int studentCount = 0, employeeCount = 0;
		for(int i=0; i<s.length; i++) {
			if(s[i] == null) {
				break;
			}
			studentCount++;
		}
		for(Employee emp : e) {
			if(emp == null) {
				break;
			}
			employeeCount++;
		}
		countArr[0] = studentCount;
		countArr[1] = employeeCount;

		return countArr;
	}
	
	public void insertStudent(String name, int age, double height,
							  double weight, int grade, String major) {
		for(int i=0; i<s.length; i++) {
			if(s[i] == null) {
				s[i] = new Student(name, age, height, weight, grade, major);
				return;
			}
		}
	}
	
	public Student[] printStudent() {
		return this.s;
	}
	
	public void insertEmployee(String name, int age, double height,
			  double weight, int salary, String dept) {
	}

	public Employee[] printEmployee() {
		return null;
	}


}
