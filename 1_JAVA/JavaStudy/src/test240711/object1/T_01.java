package test240711.object1;

import java.util.Scanner;

public class T_01 {

	public static void main(String[] args) {
		// 정수 n(2~9)를 입력받아 2부터 n까지 중 짝수의 구구단을 출력하는 코드를 작성
		// 만약 2~9사이의 값을 입력하지 않는다면 다시 입력하세요를 반복합니다.
		Scanner sc = new Scanner(System.in);
		int num;
		while(true) {
			System.out.print("2 ~ 9 사이의 정수 : ");
			num = sc.nextInt();
			if (2 <= num && num <= 9) break;
			else System.out.print("다시 입력하세요.\n");
		}
		
		for(int i = num; i < 10; i++) {
			if (i % 2 ==0) {
				for(int j = 1; j < 10; j++) {
					System.out.printf("%d * %d = %d\n",i,j,i*j);
				}
			}
		}
	}

}
