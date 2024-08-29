package f.object.ex4;

//이름 나이 수학점수 영어점수 국어점수를 데이터로 가지고 있는 개체를 만들어라
// 데이터는 직접 접근을 허용하지 않고 모두 간접적으로 set/get을 해줄 수 있도록 작성
// 모든 데이터를 매개변수로 받아 초기화 하면서 객체를 생성할 수있는 생성자를 작성
public class Student {
	private String name;
	private int age;
	private int math;
	private int eng;
	private int kor;
	
	//생성자영역 / alt + shift + s + o
	public Student() {}
	public Student(String name, int age, int math, int eng, int kor) {
		this.name = name;
		this.age = age;
		this.math = math;
		this.eng = eng;
		this.kor = kor;
	}
	
	public void Show() {
		System.out.printf("이름 : %s\n",name);
		System.out.printf("나이 : %d\n",age);
		System.out.printf("수학 : %d\n",math);
		System.out.printf("영어 : %d\n",eng);
		System.out.printf("국어 : %d\n",kor);
		System.out.printf("%s님의 평균 : %f\n\n",name ,getEvg());
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
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public double getEvg() {
		double evg = (this.kor + this.eng + this.math) / 3.0;
		return evg;
	}
	
}
