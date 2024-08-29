package test240711.object4;

public class StudentMenu {
	private StudentController ssm = new StudentController();
	
	public void StudentMenu() {
		System.out.println("========== 학생 정보 출력 ==========");
		for(int i = 0; i < 5; i++) {
			System.out.printf("이름 : %s / 과목 : %s / 점수 : %d\n",ssm.printStudent()[i].getName(), ssm.printStudent()[i].getSubject(), ssm.printStudent()[i].getScore());
		}
		System.out.println("========== 학생 성적 출력 ==========");
		System.out.printf("학생 점수 합계 : %d\n", ssm.sumScore());
		System.out.printf("학생 점수 평균 : %.1f\n", ssm.avgScore()[1]);
		System.out.println("========== 학생 결과 출력 ==========");
		for(int i = 0; i < 5; i++) {
			if(ssm.printStudent()[i].getScore() >= ssm.CUT_LINE) {
				System.out.printf("%s학생은 통과입니다.\n", ssm.printStudent()[i].getName());
			}
			else System.out.printf("%s학생은 재시험 대상입니다.\n", ssm.printStudent()[i].getName());
		}
	}
}
