package solopractice;

import java.util.Scanner;

public class Baekjun2 {

	/*
	 * 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오. 
	 * 조건1. 0 < A, B <10
	 */

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int A = 1, B = 1;
		int sum = 0;

		while (A != 0 || B != 0) {
			if (A > 0 && B < 10) {
				A = sc.nextInt();
				sc.nextLine();

				B = sc.nextInt();
				sc.nextLine();
				sum = A + B;
				System.out.println(sum);
			} 
			else {
				System.out.println("조건이 맞지 않습니다.");
				break;
			}
//			System.out.println(sum);
		}
	}
}
