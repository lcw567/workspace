package test240711.object4;

public class StudentController {
	private Student[] sArr = new Student[5];
	final int CUT_LINE = 60;
	
	
	
	public StudentController() {
		super();
		sArr[0] = new Student("김길동", "자바", 100);
		sArr[1] = new Student("박길동", "디비", 50);
		sArr[2] = new Student("이길동", "화면", 85);
		sArr[3] = new Student("정길동", "서버", 60);
		sArr[4] = new Student("홍길동", "자바", 20);
	}
	public Student[] printStudent() {
		Student[] res = new Student[sArr.length];
		res = sArr;
		return res;
	}
	public int sumScore() {
		int sum = 0;
		for(int i = 0; i < 5; i++) {
			sum += sArr[i].getScore();
		}
		return sum;
	}
	public double[] avgScore() {
		double[] avg = new double[2];
		avg[0] = sumScore();
		avg[1] = avg[0] / sArr.length;
		return avg;
	}
	
	
}
