package test.t240709.object;

public class Student {
	int grade;
	int classroom;
	String name;
	double height;
	char gender;
	
	public Student() {}
	public Student(int grade, int classroom, String name, double height, char gender) {
		this.grade = grade;
		this.classroom = classroom;
		this.name = name;
		this.height = height;
		this.gender = gender;
	}
	
	public void information() {
		System.out.printf("학년 : %d\n", grade);
		System.out.printf("반 : %d\n", classroom);
		System.out.printf("이름 : %s\n", name);
		System.out.printf("키 : %.1f\n", height);
		System.out.printf("성별 : %c\n", gender);
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getClassroom() {
		return classroom;
	}
	public void setClassroom(int classroom) {
		this.classroom = classroom;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	
}
