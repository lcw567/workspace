package test.t240704;

import java.util.Scanner;

public class T_08 {

	public static void main(String[] args) {
		String[] chArr = new String[7];
		chArr[0] = "일";
		chArr[1] = "월";
		chArr[2] = "화";
		chArr[3] = "수";
		chArr[4] = "목";
		chArr[5] = "금";
		chArr[6] = "토";
		
		Scanner sc = new Scanner(System.in);
		int num;
		System.out.print("0 ~ 6 사이 숫자 입력 : ");
		num = sc.nextInt();
		for (int i = 0; i < 7; i++) {
			if (i == num) System.out.println(chArr[i]);
		}
		
	}

}
