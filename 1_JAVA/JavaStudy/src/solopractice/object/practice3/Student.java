package solopractice.object.practice3;

public class Student {
	
	String name;	
	int age;
	static int person = 0;;
	
	
	
	public Student(String name, int age) {
		super();
		this.name = name;
		this.age = age;
		this.person++;
	}

	public Student() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public void information() {
		System.out.println("이름 :" + this.name);
		System.out.println("나이 :" + this.age);
	}
}
