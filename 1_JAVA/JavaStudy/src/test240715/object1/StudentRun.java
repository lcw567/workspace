package test240715.object1;

public class StudentRun {

	public static void main(String[] args) {
		Student s[] = new Student[10];
		for(int i = 0; i < s.length; i++) {
			s[i] = new Student();
			s[i].reName();
			s[i].reClass();
			s[i].reTest();
			System.out.println(s[i].toString());
		}
		
	}

}
