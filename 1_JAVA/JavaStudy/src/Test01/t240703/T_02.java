package Test01.t240703;

import java.util.Scanner;

public class T_02 {

	public static void main(String[] args) {
		/*
		 * 키보드로 정수를 입력받아 정수가 양수이면서 짝수일 때만 "빡수다"를 출력하고
		 * 짝수가 아니면 "홀수다"를 출력하세요.
		 * 양수가 아니면 "양수만 입력해주세요."를 출력하세요.
		 */
		
		Scanner sc = new Scanner(System.in);
		int num;
		System.out.print("숫자 : ");
		num = sc.nextInt();
		if (num > 0 && num % 2 == 0) {
			System.out.println("짝수다.");
		}
		else if (num > 0 && num % 2 == 1) {
			System.out.println("홀수다.");
		}
		else if (num == 0) {
			System.out.println("0이다.");
		}
		else {
			System.out.println("양수만 입력해주세요.");
		}

	}

}
