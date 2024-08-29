package test.t240705;

import java.util.Scanner;

public class T_07 {

	public static void main(String[] args) {
		int a, b, max, min;
		Scanner sc = new Scanner(System.in);
		
		while (true) {
			System.out.print("첫 번째 숫자 : ");
			a = sc.nextInt();
			if (a > 1) break;
			else System.out.println("1 이상의 숫자를 입력해주세요");
		}
		while (true) {
			System.out.print("두 번째 숫자 : ");
			b = sc.nextInt();
			if (b > 1) break;
			else System.out.println("1 이상의 숫자를 입력해주세요");
		}
		max = a > b ? a : b;
		min = a < b ? a : b;
		for (int i = min; i < max + 1; i++) {
			System.out.printf("%d ",i);
		}
		
		
	}

}
