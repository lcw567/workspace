package test.t240705;

import java.util.Scanner;

public class T_09 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num;
		
		System.out.print("정수 : ");
		num = sc.nextInt();
		
		if (num < 1) System.out.println("양수가 아닙니다.");
		for (int i = 0; i < num; i++) {
			if (i % 2 == 1)	System.out.print("수");
			else System.out.print("박");
		}
		
		
	}

}
