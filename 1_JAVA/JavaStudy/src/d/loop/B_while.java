package d.loop;

import java.util.Scanner;

public class B_while {
	/*
	 * while문
	 * 
	 * [표현법]
	 * 
	 * [초기식;]
	 * while(조건식){
	 * 		반복할 코드
	 * 		증감식;
	 * }
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		/*
		 * 1에서 부터 10000사이의 홀수만을 출력
		 * while문을 이용해서 하기
		 */
//		int i = 1;
//		while(i<10001) {
//			if (i % 2 == 1) System.out.printf("%d\n", i);
//			i++;
//		}
		
		/*
		 * 1부터 랜덤값(1 ~ 100사이)까지의 합계를 출력
		 * 1에서부터 xx까지의 총 합계 : xxxx
		 */
		
//		int num = (int)(Math.random() * 100) +1;
//		int i = 0, total = 0;
//		while (i < num + 1) {
//			total +=i;
//			i++;
//		}
//		System.out.printf("1에서부터 %d까지의 총 합계 : %d", num, total);
		
		/*
		 * 사용자에게 문자열을 입력받아
		 * 해당 문자열의 짝수자리 글자만 출력
		 * 문자열 입력 : hello
		 */
		
		String str;
		System.out.print("문자열 입력 : ");
		str = sc.next();
		
		for (int i = 0; i < str.length(); i++) {
			if (i%2==1) System.out.printf("%c", str.charAt(i));
		}
		
	}

}
