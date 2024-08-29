package C.controll;

import java.util.Scanner;

public class B_switch1 {
	/*
	 * switch문도 if 문과 동일하게 조건문이다.
	 * 
	 * 다만 , if문과의 차이점이라면
	 * > if문은 조건식을 자유롭게 기술할 수 있다.
	 *   switch문은 동등비교로 밖에 수행되지 않는다.
	 * > 실행할 구문만 실행하고 자동으로 빠져나올 수 없다.(직접 빠져나오도록 설정이 필요)
	 * 
	 * [표현식]
	 * switch(비교대상(정수, 문자, 문자열)){
	 * case 값1 : 실행코드;
	 * case 값2 : 실행코드;
	 * case 값.. : 실행코드;
	 * ...
	 * default: 위에 값들이 모두 일치하지 않을 때 실행하는 코드;
	 * }
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		/*
		 * 정수를 입력받아
		 * 1일경우 빨간색입니다.
		 * 2일경우 파란색입니다.
		 * 3일경우 초록색입니다.
		 * 다른경우 모두 잘못 입력하셨습니다.
		 */
		
		int num;
		
		System.out.print("정수 입력 : ");
		num = sc.nextInt();
		
		switch(num) {
		case 1:
			System.out.println("빨간색입니다."); break;
		case 2:
			System.out.println("파란색입니다."); break;
		case 3:
			System.out.println("초록색입니다."); break;
		default:
			System.out.println("잘못입력하셨습니다."); break;
		}
		
		if (num==1) {
			System.out.println("빨간색입니다.");
		}
		else if (num==1) {
			System.out.println("파란색입니다.");
		}
		else if (num==1) {
			System.out.println("초록색입니다.");
		}
		else {
			System.out.println("잘못입력하셨습니다.");
		}
	}

}
